SELECT W.Essn as "Manager SSN", count(W.Essn) as "Number of Projects" FROM WORKS_ON W WHERE W.Essn = (SELECT D.Mgr_ssn FROM PROJECT P, DEPARTMENT D WHERE P.Dnum = D.Dnumber and P.Pname = 'productY') GROUP BY W.Essn;
