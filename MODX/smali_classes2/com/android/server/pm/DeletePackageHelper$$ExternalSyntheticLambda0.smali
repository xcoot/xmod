.class public final synthetic Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    check-cast v1, Lcom/android/server/pm/DeletePackageHelper;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 14
    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v7, 0x1

    .line 19
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 24
    .line 25
    iget v1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Landroid/content/pm/IPackageDeleteObserver2;

    .line 30
    .line 31
    const-string v2, "Attempted to delete system required package: "

    .line 32
    .line 33
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " callingUid: "

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, -0x1

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-interface {p0, v0, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    return-void

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 63
    .line 64
    iget v1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Landroid/content/pm/IPackageDeleteObserver2;

    .line 69
    .line 70
    const-string v2, "Attempted to delete "

    .line 71
    .line 72
    :try_start_1
    const-string v3, "PackageManager"

    .line 73
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ", callingUid: "

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", observer.hashCode(): "

    .line 91
    .line 92
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-interface {p0}, Landroid/content/pm/IPackageDeleteObserver2;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    const/4 v1, -0x1

    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-interface {p0, v0, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .line 113
    .line 114
    :catch_1
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
