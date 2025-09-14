.class public final synthetic Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;->f$2:I

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;->f$3:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    neg-int v1, v1

    .line 16
    :goto_0
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v4, v3, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 39
    .line 40
    invoke-virtual {v3, v2, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    const/16 v4, 0xf

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    new-instance v4, Lcom/android/server/pm/PackageVerificationResponse;

    .line 58
    .line 59
    invoke-direct {v4, p0, v2}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 60
    .line 61
    .line 62
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 63
    .line 64
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object p0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void
.end method
