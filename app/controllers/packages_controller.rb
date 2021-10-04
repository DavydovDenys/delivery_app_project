class PackagesController < ApiController
  def create
    @package = Package.new(package_params)
    @package.tracking_number = SequenceGeneratorService.generate

    if @package.valid?
      @package.save
      render json: PackageSerializer.new(@package).serializable_hash, status: :created
    else
      render json: ErrorsSerializer.new(@package), status: :bad_request
    end
  end

  private

  def package_params
    params.require(:package).permit(:estimated_delivery_date, :delivery_status)
  end
end
