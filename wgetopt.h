#ifndef GETOPT_H
#define GETOPT_H

extern int opterr,
	optind, // index into parent argv vector /
	optopt, // character checked for validity /
	optreset; // reset getopt /
extern char *optarg; // argument associated with option */

char getopt(int nargc, char * const nargv[], const char *ostr) ;

#endif
