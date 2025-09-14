.class public final synthetic Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda3;->f$0:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda3;->f$0:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/slice/PinnedSliceState;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/slice/PinnedSliceState;->mUri:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ne p1, p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method
