
package body Semaphore is

   protected body Binary_Semaphore is
      entry Acquire when Open is
      begin
	 Open := false;
      end Acquire;

      entry Release when not Open is
      begin
	 Open := true;
      end Release;
   end Binary_Semaphore;
end Semaphore;
