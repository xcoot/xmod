.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->f$0:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->f$0:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 9
    .line 10
    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 11
    .line 12
    if-ne v0, p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return-object p1

    .line 17
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/DisplayArea;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 26
    .line 27
    if-ne v0, p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    :goto_1
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
