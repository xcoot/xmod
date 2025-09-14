.class public final synthetic Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService$BinderService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService$BinderService;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService$BinderService;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda1;->f$1:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamManagerService$BinderService;

    .line 3
    iget-boolean p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService$$ExternalSyntheticLambda1;->f$1:Z

    .line 5
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 7
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    .line 9
    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iput-boolean p0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamIsObscured:Z

    .line 15
    :cond_0
    return-void
.end method
