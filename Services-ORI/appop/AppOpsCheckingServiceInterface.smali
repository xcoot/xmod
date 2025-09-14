.class public interface abstract Lcom/android/server/appop/AppOpsCheckingServiceInterface;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public abstract addAppOpsModeChangedListener(Lcom/android/server/appop/AppOpsService$2;)Z
.end method

.method public abstract clearAllModes()V
.end method

.method public abstract getForegroundOps(I)Landroid/util/SparseBooleanArray;
.end method

.method public abstract getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;
.end method

.method public abstract getNonDefaultPackageModes(ILjava/lang/String;)Landroid/util/SparseIntArray;
.end method

.method public abstract getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
.end method

.method public abstract getPackageMode(IILjava/lang/String;)I
.end method

.method public abstract getUidMode(IILjava/lang/String;)I
.end method

.method public abstract readState()V
.end method

.method public abstract removePackage(ILjava/lang/String;)Z
.end method

.method public abstract removeUid(I)V
.end method

.method public abstract setPackageMode(IIILjava/lang/String;)V
.end method

.method public abstract setUidMode(III)Z
.end method

.method public abstract shutdown()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract writeState()V
.end method
