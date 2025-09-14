.class public final Lcom/android/server/notification/EasyMuteController$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$3;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "EasyMuteController"

    .line 2
    .line 3
    const-string v1, "binderDied()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/notification/EasyMuteController$3;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$3;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/notification/EasyMuteController;->mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
