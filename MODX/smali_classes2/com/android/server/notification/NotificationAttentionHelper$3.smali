.class public final Lcom/android/server/notification/NotificationAttentionHelper$3;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 2
    .line 3
    iget p2, p2, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean p2, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "Call state changed: "

    .line 15
    .line 16
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/android/server/notification/NotificationAttentionHelper;->callStateToString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v0, "NotifAttentionHelper"

    .line 31
    .line 32
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$3;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 36
    .line 37
    iput p1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallState:I

    .line 38
    .line 39
    return-void
.end method
