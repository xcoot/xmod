.class public final synthetic Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IntArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IntArray;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IntArray;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
