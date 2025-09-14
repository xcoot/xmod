.class public final Lcom/android/server/am/UserSwitchingDialog$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$onAnimationEndWithTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$1;->val$onAnimationEndWithTimeout:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$1;->val$onAnimationEndWithTimeout:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
