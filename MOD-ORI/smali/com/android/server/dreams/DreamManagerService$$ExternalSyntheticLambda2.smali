.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/dreams/DreamManagerService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/dreams/DreamManagerService;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
