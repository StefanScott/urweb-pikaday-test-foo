table thing : { 
  Nam  : string,
  Date : time 
}

fun add_thing r =
  dml (
    INSERT INTO thing (
      Nam,
      Date
    ) 
    VALUES (
      "foo",
      {[readError ( r.DateField ^ " 12:00:00") ]}
    )
  )
  ; return 
    <xml>
      <body>
        <p>Thing inserted!</p>
      </body>
    </xml>

fun main () =
  date_nid <- fresh
  ; return
    <xml>
      <head>
        <link
          rel="stylesheet"
          type="text/css"
          href="/pikaday.css" />
        <link
          rel="stylesheet"
          type="text/css"
          href="/site.css" />
      </head>
      <body onload={PikadayControl.init date_nid}>
        <form>
          <textbox{#DateField} id={date_nid}/>
          <submit action={add_thing} value="Add !"/>
        </form>
      </body>
    </xml>
