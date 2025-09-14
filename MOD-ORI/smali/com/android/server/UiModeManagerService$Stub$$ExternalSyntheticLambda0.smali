.class public final synthetic Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiModeManagerService$Stub;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService$Stub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService$Stub;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService$Stub;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$Stub;->this$0:Lcom/android/server/UiModeManagerService;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
