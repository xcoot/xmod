.class public final Lcom/android/server/devicepolicy/OneTimeSafetyChecker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/admin/DevicePolicySafetyChecker;


# instance fields
.field public mDone:Z

.field public final mOperation:I

.field public final mRealSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field public final mReason:I

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;

    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 18
    iput p2, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mOperation:I

    .line 20
    iput p3, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mReason:I

    .line 22
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 24
    iput-object p1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mRealSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    const-string v2, "OneTimeSafetyChecker constructor: operation="

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string p2, ", reason="

    .line 42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p3}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string p2, ", realChecker="

    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string p1, ", maxDuration=10000ms"

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    const-string p2, "OneTimeSafetyChecker"

    .line 71
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance p1, Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;

    .line 76
    invoke-direct {p1, p0}, Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/OneTimeSafetyChecker;)V

    .line 79
    const-wide/16 p2, 0x2710

    .line 81
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    return-void
.end method


# virtual methods
.method public final disableSelf()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mDone:Z

    .line 3
    const-string v1, "OneTimeSafetyChecker"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string/jumbo p0, "disableSelf(): already disabled"

    .line 10
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v2, "restoring DevicePolicySafetyChecker to "

    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mRealSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 36
    iget-object v1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mRealSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDevicePolicySafetyCheckerUnchecked(Landroid/app/admin/DevicePolicySafetyChecker;)V

    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mDone:Z

    .line 44
    return-void
.end method

.method public final getUnsafeOperationReason(I)I
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "getUnsafeOperationReason("

    .line 8
    const-string v2, ")"

    .line 10
    const-string v3, "OneTimeSafetyChecker"

    .line 12
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget v1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mOperation:I

    .line 17
    if-ne p1, v1, :cond_0

    .line 19
    iget p1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mReason:I

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo p1, "invalid call to isDevicePolicyOperationSafe(): asked for "

    .line 25
    const-string v1, ", should be "

    .line 27
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p1

    .line 31
    iget v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mOperation:I

    .line 33
    invoke-static {v0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-static {v3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 p1, -0x1

    .line 48
    :goto_0
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    const-class v1, Landroid/app/admin/DevicePolicyManagerLiteInternal;

    .line 54
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/app/admin/DevicePolicyManagerLiteInternal;

    .line 60
    const-string/jumbo v2, "notifying "

    .line 63
    const-string v4, " is UNSAFE"

    .line 65
    invoke-static {v2, v0, v4, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-interface {v1, p0, p1, v4}, Landroid/app/admin/DevicePolicyManagerLiteInternal;->notifyUnsafeOperationStateChanged(Landroid/app/admin/DevicePolicySafetyChecker;IZ)V

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v2, " is SAFE"

    .line 79
    invoke-static {v4, v0, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-interface {v1, p0, p1, v2}, Landroid/app/admin/DevicePolicyManagerLiteInternal;->notifyUnsafeOperationStateChanged(Landroid/app/admin/DevicePolicySafetyChecker;IZ)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v2, "returning "

    .line 91
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->disableSelf()V

    .line 107
    return p1
.end method

.method public final isSafeOperation(I)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mReason:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v2, "isSafeOperation("

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, "): "

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string v1, "OneTimeSafetyChecker"

    .line 37
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->disableSelf()V

    .line 43
    return v0
.end method

.method public final onFactoryReset(Lcom/android/internal/os/IResultReceiver;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "OneTimeSafetyChecker[id="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", reason="

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mReason:I

    .line 22
    invoke-static {v1}, Landroid/app/admin/DevicePolicyManager;->operationSafetyReasonToString(I)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, ", operation="

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget p0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mOperation:I

    .line 36
    invoke-static {p0}, Landroid/app/admin/DevicePolicyManager;->operationToString(I)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const/16 p0, 0x5d

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
