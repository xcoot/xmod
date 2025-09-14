.class public final Lcom/android/server/notification/EasyMuteController$2;
.super Landroid/app/INotificationPlayerOnCompletionListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/INotificationPlayerOnCompletionListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCompletion()V
    .locals 2

    .line 1
    const-string v0, "EasyMuteController"

    .line 2
    .line 3
    const-string/jumbo v1, "onCompletion"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/notification/EasyMuteController$2;->this$0:Lcom/android/server/notification/EasyMuteController;

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/notification/EasyMuteController;->mIsRegister:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
