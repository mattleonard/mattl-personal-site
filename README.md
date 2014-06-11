Mattl.co
--------------------------------------------

Here is the repo for my personal portfilio site [Mattl.co](http://mattl.co/)

Feel free to copy this app and use it for your self.

## Setup

####Clone the app

`git clone https://github.com/mattleonard/mattl-personal-site.git`

####Change into the directory

`cd mattl-personal-site/`

####Bundle those gems

`bundle install`

####Setup the database (I have it setup for postgres)

You may have to edit some details in the `config/database.yml` file

`rake db:create db:migrate`

####Create an admin to login to the backend

```
rails console

User.create(email: "admin@admin.com", password: "such_secure")

```

## Push to Heroku

#### Create heroku app
`heroku create`

#### Push to heroku
`git push heroku master`

Should be good to go! Let me know if you have any issues

Disclaimer
----------
THIS SOFTWARE IS PROVIDED BY THE MATT LEONARD AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE MATT LEONARD OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
OF SUCH DAMAGE.
