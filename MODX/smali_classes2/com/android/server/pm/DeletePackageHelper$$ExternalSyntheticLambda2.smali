.class public final synthetic Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/pm/IPackageDeleteObserver2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, -0x4

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-interface {v0, p0, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, -0x3

    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_1
    invoke-interface {v0, p0, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    .line 25
    :catch_1
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    .line 29
    .line 30
    const-string v1, "Attempted to delete protected package: "

    .line 31
    .line 32
    :try_start_2
    const-string v2, "PackageManager"

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-interface {p0, v0, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    .line 53
    .line 54
    :catch_2
    return-void

    .line 55
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    .line 58
    .line 59
    const-string v1, "Not removing package "

    .line 60
    .line 61
    :try_start_3
    const-string v2, "PackageManager"

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ": has active device admin"

    .line 72
    .line 73
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    const/4 v1, -0x2

    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-interface {p0, v0, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 86
    .line 87
    .line 88
    :catch_3
    return-void

    .line 89
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;->f$1:Landroid/content/pm/IPackageDeleteObserver2;

    .line 92
    .line 93
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    .line 94
    .line 95
    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    .line 96
    .line 97
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v2, "package"

    .line 101
    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    const-string v0, "android.content.pm.extra.CALLBACK"

    .line 112
    .line 113
    invoke-interface {p0}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    invoke-interface {p0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 121
    .line 122
    .line 123
    :catch_4
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
