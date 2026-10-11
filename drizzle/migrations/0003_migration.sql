drop trigger if exists guard_doctor_review_trg on public.doctors;
create trigger guard_doctor_review_trg before update on public.doctors for each row execute function public.guard_doctor_review();
drop trigger if exists guard_scan_premium_trg on public.scans;
create trigger guard_scan_premium_trg before insert on public.scans for each row execute function public.guard_scan_premium();