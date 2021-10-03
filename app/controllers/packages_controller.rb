class PackagesController < ApiController
  def create
    @package = Package.new(package_params)
    @package.tracking_number = SequenceGeneratorService.generate

    if @package.valid?
      @package.save
      render json: { package: @package, status: :created }
    else
      render json: { errors: @package.errors.full_messages, status: :unprocessable_entity }
    end
  end

  private

  def package_params
    params.require(:package).permit(:estimated_delivery_date, :tracking_number, :delivery_status)
  end
end
