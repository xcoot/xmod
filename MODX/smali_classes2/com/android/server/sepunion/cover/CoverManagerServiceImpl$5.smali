.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCoverTestModeChanged(IZ)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$5;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mSystemReady:Z

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/16 v0, 0xff

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    new-instance p1, Lcom/samsung/android/cover/CoverState;

    .line 13
    .line 14
    const/16 v4, 0xff

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    move-object v2, p1

    .line 21
    move v8, p2

    .line 22
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIIIZ)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->mNfcLedCoverController:Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->notifyAuthenticationResponse()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method
