.class public final synthetic Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    check-cast p3, Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    const/4 p0, 0x0

    .line 21
    :goto_0
    iget-object v2, p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge p0, v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 36
    .line 37
    invoke-virtual {v2, v0, v1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onReportFullyDrawn(JJ)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 p0, p0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void

    .line 44
    :pswitch_0
    check-cast p2, Landroid/content/Intent;

    .line 45
    .line 46
    check-cast p3, Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    const/4 p0, 0x0

    .line 53
    :goto_1
    iget-object p3, p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-ge p0, p3, :cond_1

    .line 60
    .line 61
    iget-object p3, p1, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    check-cast p3, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 68
    .line 69
    invoke-virtual {p3, p2, v0, v1}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onIntentStarted(Landroid/content/Intent;J)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 p0, p0, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
