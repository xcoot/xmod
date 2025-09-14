.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Landroid/widget/Scroller;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
