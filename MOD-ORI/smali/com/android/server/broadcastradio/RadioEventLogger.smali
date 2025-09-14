.class public final Lcom/android/server/broadcastradio/RadioEventLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDebug:Z

.field public final mEventLogger:Landroid/util/LocalLog;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mDebug:Z

    .line 12
    .line 13
    new-instance p1, Landroid/util/LocalLog;

    .line 14
    .line 15
    const/16 v0, 0x19

    .line 16
    .line 17
    invoke-direct {p1, v0}, Landroid/util/LocalLog;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final varargs logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mDebug:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mTag:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
