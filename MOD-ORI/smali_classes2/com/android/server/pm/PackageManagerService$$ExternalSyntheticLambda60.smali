.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda60;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x1

    .line 18
    if-ge v4, v5, :cond_3

    .line 19
    .line 20
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lcom/android/server/pm/InstallRequest;

    .line 27
    .line 28
    iget v7, v5, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 29
    .line 30
    if-eq v7, v6, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget-object v6, v5, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 34
    .line 35
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    move v6, v3

    .line 46
    :goto_1
    iget-object v7, v5, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 47
    .line 48
    array-length v8, v7

    .line 49
    if-ge v6, v8, :cond_2

    .line 50
    .line 51
    aget v7, v7, v6

    .line 52
    .line 53
    if-ne v2, v7, :cond_1

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/16 v5, 0x3e8

    .line 67
    .line 68
    invoke-interface {v4, v2, v5, v1}, Lcom/android/server/pm/Computer;->isInstantAppInternal(IILjava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    move-object v7, v5

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    new-array v7, v6, [I

    .line 79
    .line 80
    aput v2, v7, v3

    .line 81
    .line 82
    :goto_3
    if-eqz v4, :cond_5

    .line 83
    .line 84
    new-array v5, v6, [I

    .line 85
    .line 86
    aput v2, v5, v3

    .line 87
    .line 88
    :cond_5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 89
    .line 90
    invoke-virtual {v0, v1, p0, v7, v5}, Lcom/android/server/pm/BroadcastHelper;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 91
    .line 92
    .line 93
    :goto_4
    return-void
.end method
