.class public final Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_CONTINUITY:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_MULTI_CONTROL:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 32
    .line 33
    const/4 p1, 0x7

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 49
    .line 50
    const/16 p1, 0x8

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_HW_SHARING:Landroid/net/Uri;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 67
    .line 68
    const/16 p1, 0x9

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
