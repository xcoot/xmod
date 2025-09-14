.class public final synthetic Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/NavBarFadeAnimationController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/NavBarFadeAnimationController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/NavBarFadeAnimationController$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/NavBarFadeAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
