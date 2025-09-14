.class public final Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
