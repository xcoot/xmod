.class public final synthetic Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/debug/RotaryInputValueView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/RotaryInputValueView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 2
    .line 3
    const v0, -0xff01

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
