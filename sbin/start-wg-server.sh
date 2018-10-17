echo "Argument send: $1"

if [ "$1" = "tulip" ]
then
  echo "Loading context Tulip..."
  . /Users/mczal/.wg-context/lib/s3-tulipromance-dev
  /Users/mczal/.rvm/gems/ruby-2.5.1/bin/rails s
fi

if [ "$1" = "bppsdmk" ]
then
  echo "Loading context Web BPPSDMK..."
  . /Users/mczal/.wg-context/lib/s3-bppsdmk-dev
  /Users/mczal/.rvm/gems/ruby-2.5.1/bin/rails s
fi

if [ "$1" = "puslat" ]
then
  echo "Loading context Training PPSDMK..."
  . /Users/mczal/.wg-context/lib/s3-training-ppsdmk-dev
  /Users/mczal/.rvm/gems/ruby-2.5.1/bin/rails s -p 3030
fi

if [ "$1" = "bank-soal" ]
then
  echo "Loading context Training PPSDMK..."
  . /Users/mczal/.wg-context/lib/s3-training-ppsdmk-dev
  /Users/mczal/.rvm/gems/ruby-2.5.1/bin/rails s -p 3000
fi
