.class public final synthetic Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;IIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$2:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$3:I

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$4:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$2:I

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$3:I

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;->f$4:J

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-ltz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    neg-int v1, v1

    .line 18
    :goto_0
    iget-object p0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/pm/PackageVerificationState;

    .line 27
    .line 28
    if-eqz p0, :cond_4

    .line 29
    .line 30
    iget-object v6, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_4

    .line 38
    .line 39
    iget-object v6, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    .line 49
    .line 50
    const/4 v6, 0x1

    .line 51
    invoke-virtual {p0, v2, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 52
    .line 53
    .line 54
    new-instance p0, Lcom/android/server/pm/PackageVerificationResponse;

    .line 55
    .line 56
    invoke-direct {p0, v3, v2}, Lcom/android/server/pm/PackageVerificationResponse;-><init>(II)V

    .line 57
    .line 58
    .line 59
    const-wide/32 v2, 0x36ee80

    .line 60
    .line 61
    .line 62
    cmp-long v6, v4, v2

    .line 63
    .line 64
    if-lez v6, :cond_2

    .line 65
    .line 66
    move-wide v4, v2

    .line 67
    :cond_2
    const-wide/16 v2, 0x0

    .line 68
    .line 69
    cmp-long v6, v4, v2

    .line 70
    .line 71
    if-gez v6, :cond_3

    .line 72
    .line 73
    move-wide v4, v2

    .line 74
    :cond_3
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 77
    .line 78
    const/16 v3, 0xf

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 85
    .line 86
    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    .line 88
    iget-object p0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_1
    return-void
.end method
