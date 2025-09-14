.class public interface abstract Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract checkComponentPermission(ILjava/lang/String;)I
.end method

.method public abstract getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
.end method

.method public abstract getAppOpsManager()Landroid/app/AppOpsManager;
.end method

.method public abstract getCallingPid()I
.end method

.method public abstract getCallingUid()I
.end method

.method public abstract getCallingUserId()I
.end method

.method public abstract getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;
.end method

.method public abstract getIPackageManager()Landroid/content/pm/IPackageManager;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
.end method

.method public abstract getUserManager()Landroid/os/UserManager;
.end method

.method public abstract killUid(I)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
.end method

.method public abstract withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
.end method
