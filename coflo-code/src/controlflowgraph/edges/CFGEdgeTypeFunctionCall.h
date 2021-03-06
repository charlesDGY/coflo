/*
 * Copyright 2011, 2012 Gary R. Van Sickle (grvs@users.sourceforge.net).
 *
 * This file is part of CoFlo.
 *
 * CoFlo is free software: you can redistribute it and/or modify it under the
 * terms of version 3 of the GNU General Public License as published by the Free
 * Software Foundation.
 *
 * CoFlo is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
 * PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * CoFlo.  If not, see <http://www.gnu.org/licenses/>.
 */

/** @file */

#ifndef CFGEDGETYPEFUNCTIONCALL_H
#define	CFGEDGETYPEFUNCTIONCALL_H

#include "CFGEdgeTypeBase.h"

class ControlFlowGraph;
class FunctionCallResolved;

/**
 * A function call edge.
 * 
 * @param function_call
 */
class CFGEdgeTypeFunctionCall : public CFGEdgeTypeBase
{
public:
	CFGEdgeTypeFunctionCall(FunctionCallResolved *function_call);
	CFGEdgeTypeFunctionCall(const CFGEdgeTypeFunctionCall& orig);
	virtual ~CFGEdgeTypeFunctionCall();
	
	CFGEdgeTypeFunctionCall& operator=(const CFGEdgeTypeFunctionCall& orig);

//private:
	/// The FunctionCall Vertex instance which resulted in this edge.
	/// We need this to determine e.g. what parameters were passed.
	FunctionCallResolved *m_function_call;

	/// The ControlFlowGraph which contains the target vertex of this edge.
	ControlFlowGraph *m_target_cfg;

private:

	/**
	 * Copy constructor / assignment operator helper.
	 *
	 * @param orig
	 */
	void Copy(const CFGEdgeTypeFunctionCall& orig);
};

#endif	/* CFGEDGETYPEFUNCTIONCALL_H */

