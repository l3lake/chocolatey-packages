﻿[Office to PDF](https://chocolatey.org/packages/office-to-pdf)

# OfficeToPDF

## Giving back to the community

[Cognidox](https://www.cognidox.com/) would not exist without the help of many open source projects. Perl,
Apache and Solr are just a few of the excellent open source packages that help make CogniDox a leading document
management system. So, to show our appreciation, we've released a couple of open source projects such as
OfficeToPDF to help others.

---
## OfficeToPDF - what does it do?

OfficeToPDF is a **command line utility** that converts Microsoft Office 2003, 2007, 2010, 2013 and 2016
documents from their native format into PDF using Office's in-built PDF export features.

Most Office to PDF converter tools are intended as single-user desktop applications. OfficeToPDF is
useful (and unique) if you want to automatically create PDF files on a server-wide basis and free
individual users from an extra step of using the Save..."
command on their Office files. These PDF files can then be stored and managed on a separate server. 
This can be useful if, for example, a department has a policy of only distributing PDF versions of 
documents to people outside the department.

There are some technical requirements that must be met before you can use it:</p>

* .NET Framework 4
* Office 2016, 2013, 2010 **or** Office 2007

If you are using Office 2007, you will also need:

* Visual Studio 2010 Tools for Office Runtime [<a href="https://www.microsoft.com/en-GB/download/details.aspx?id=48217" target="_blank">Download</a>]
* 2007 Microsoft Office Add-in: Microsoft Save as PDF or XPS [<a href="http://www.microsoft.com/downloads/en/details.aspx?familyid=4d951911-3e7e-4ae6-b059-a2e79ed87041&displaylang=en" target="_blank">Download</a>]

It is distributed under the [**Apache 2.0**](https://github.com/cognidox/OfficeToPDF/blob/master/LICENSE.md) license.

---

## Supported File Types

The following file types can be converted:

* Word (.doc, .dot,&nbsp; .docx, .dotx, .docm, .dotm, .rtf, .wpd)
* Excel&nbsp; (.xls, .xlsx, .xlsm, .xlsb, .xlt, .xltx, .xltm, .csv)
* Powerpoint (.ppt, .pptx, .pptm, .pps, .ppsx, .ppsm, .pot, .potx, .potm)
* Visio (.vsd, .vsdx, .vsdm, .svg) [Requires &gt;= Visio 2013 for .svg, .vsdx and .vsdm support]
* Publisher (.pub) </li><li>Outlook (.msg, .vcf, .ics)
* Project (.mpp) [Requires Project &gt;= 2010 for .mpp support]
* OpenOffice (.odt, .odp, .ods)

Conversion of Visio, Publisher and Project&nbsp;files require that the Visio, Publisher and Project
applications are installed. These are not included in the Office standard package.

---

## Instructions

In order to use the tool, download the officetopdf.exe file and, from the command line, run officetopdf.exe with two arguments - 
the source Office document and the destination PDF document. e.g.

    Microsoft Windows [Version 6.1.7601]
    Copyright (c) 2009 Microsoft Corporation. All rights reserved.

    C:\Users\test> officetopdf.exe somefile.docx somefile.pdf