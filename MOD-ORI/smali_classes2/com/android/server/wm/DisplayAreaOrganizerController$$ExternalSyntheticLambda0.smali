.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/window/IDisplayAreaOrganizer;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;->f$0:Landroid/window/IDisplayAreaOrganizer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda0;->f$0:Landroid/window/IDisplayAreaOrganizer;

    .line 2
    .line 3
    check-cast p1, Ljava/util/Map$Entry;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 12
    .line 13
    invoke-interface {v0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p0}, Landroid/window/IDisplayAreaOrganizer;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v0, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayAreaOrganizerController$DisplayAreaOrganizerState;->destroy()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return p0
.end method
