.class public final synthetic Lcom/android/server/UiModeManagerService$11$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/UiModeManagerService$11$$ExternalSyntheticLambda0;->f$0:F

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/UiModeManagerService$11$$ExternalSyntheticLambda0;->f$0:F

    .line 2
    .line 3
    check-cast p1, Landroid/app/IUiModeManagerCallback;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroid/app/IUiModeManagerCallback;->notifyContrastChanged(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
