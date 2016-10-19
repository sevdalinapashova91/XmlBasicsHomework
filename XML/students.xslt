<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <html>
      <body>
        <h1>Students</h1>
        <div>
        <xsl:for-each select="students/student">
          <h2>Student:</h2>      
          <span>Name: </span><br/>
          <xsl:value-of select="name"/>
          <h5>
            Sex: <xsl:value-of select="male"/>
          </h5>
          <h5>
            BirthDate: <xsl:value-of select="birthDate"/>
          </h5>
          <h5>
            Email: <xsl:value-of select="email"/>
          </h5>
          <h5>
            course: <xsl:value-of select="course"/>
          </h5>
          <h5>
            specialty: <xsl:value-of select="specialty"/>
          </h5>
          <h5>
            facultyNumber <xsl:value-of select="facultyNumber"/>
          </h5>
          <xsl:for-each select="exams/exam">
            <h5>
               Exam:<xsl:value-of select="name"/>
            </h5>
            <h5>
              Tutor:<xsl:value-of select="tutor"/>
            </h5>
            <h5>
              Score:<xsl:value-of select="score"/>
            </h5>
          </xsl:for-each>
          <xsl:for-each select="enrollments/enrollment">
            <h5>
              Date:<xsl:value-of select="date"/>
            </h5>
            <h5>
              Endorsement:<xsl:value-of select="endorsement"/>
            </h5>
            <h5>
              Score:<xsl:value-of select="score"/>
            </h5>
          </xsl:for-each>
          
        </xsl:for-each>
       </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
