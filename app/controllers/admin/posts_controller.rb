class Admin::PostsController < Admin::BaseController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to [:admin, @post], notice: '.success' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to [:admin, @post], notice: 'Успех' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to admin_posts_path, notice: 'Успех' }
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name,
                                 :material_type,
                                 :preview,
                                 video_attributes:[:id, :youtube_link],
                                 pictures_attributes: [:id, :image, :_destroy])
  end
end

#
# {
#     "utf8"=>"✓",
#     "_method"=>"patch",
#     "authenticity_token"=>"ozrb5zP4pEMlosU7mLAHQu1S5kWr1xsVcLltEMYmB6MG+PDMahCSKDcI5gc9GbGPjvaxfi9uf56WbL6bH14N2w==",
#     "post"=> {
#         "name"=>"тестовый пост",
#         "material_type"=>"pictures",
#         "video_attributes"=>{
#             "youtube_link"=>"asdfasdfa",
#             "id"=>"3"
#         },
#         "pictures_attributes"=> {
#             "1469388709505"=> {
#                 "image"=>
#                     #<ActionDispatch::Http::UploadedFile:0x007fabec789480
#                       @content_type="image/jpeg",
#                       @headers="Content-Disposition: form-data; name=\"post[pictures_attributes][1469388709505][image]\"; filename=\"sococoHQweb_original.jpg\"\r\nContent-Type: image/jpeg\r\n",
#                       @original_filename="sococoHQweb_original.jpg",
#                       @tempfile=#<File:/var/folders/wx/qn2n5gnn4xs_6tw6hbncs7zm0000gn/T/RackMultipart20160724-7972-1gylfm8.jpg>>,
#                 "_destroy"=>"false"
#             }
#         }
#     },
#     "commit"=>"submit",
#     "id"=>"8"
# }