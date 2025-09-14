.class public final Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/AutoScreenOn;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/AutoScreenOn;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;->this$0:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "CoverManager_AutoScreenOn"

    .line 7
    .line 8
    const-string p1, "AutoScreenOnObserver"

    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "AutoScreenOnObserver.onChange(boolean selfChange : "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ")"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "CoverManager_AutoScreenOn"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;->this$0:Lcom/android/server/sepunion/cover/AutoScreenOn;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->update()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
