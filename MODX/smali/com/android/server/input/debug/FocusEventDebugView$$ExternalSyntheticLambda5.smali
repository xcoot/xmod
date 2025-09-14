.class public final synthetic Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/HorizontalScrollView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;->f$0:Landroid/widget/HorizontalScrollView;

    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;->f$0:Landroid/widget/HorizontalScrollView;

    .line 3
    const/16 p1, 0x42

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 8
    return-void
.end method
