% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/access.R
\name{set_rights_and_access}
\alias{set_rights_and_access}
\title{Set the given subject as the rightsHolder and subject with write and
changePermission access for the given PID.}
\usage{
set_rights_and_access(mn, pids, subject, permissions = c("read", "write",
  "changePermission"))
}
\arguments{
\item{mn}{(MNode) The Member Node to send the query.}

\item{pids}{(character) The PID(s) to set the access rule for.}

\item{subject}{(character)The subject of the rule(s).}

\item{permissions}{(character) The permissions for the rule. Defaults to
read, write, and changePermission.}
}
\value{
Whether an update was needed.
}
\description{
This function only updates the existing System Metadata if a change is
needed.
}
\examples{
\dontrun{
cn <- CNode("STAGING2")
mn <- getMNode(cn,"urn:node:mnTestKNB")
pids <- c("urn:uuid:3e5307c4-0bf3-4fd3-939c-112d4d11e8a1",
    "urn:uuid:23c7cae4-0fc8-4241-96bb-aa8ed94d71fe")
set_rights_and_access(mn, pids, "http://orcid.org/0000-000X-XXXX-XXXX",
    permissions = c("read", "write", "changePermission"))
}
}
