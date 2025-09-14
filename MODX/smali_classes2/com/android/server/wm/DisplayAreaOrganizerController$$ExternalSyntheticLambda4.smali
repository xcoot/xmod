.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootDisplayArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootDisplayArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RootDisplayArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/RootDisplayArea;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/DisplayArea;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 6
    .line 7
    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    move-object p1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eq v0, p0, :cond_2

    .line 19
    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    .line 22
    :cond_2
    :goto_0
    return-object p1
.end method
