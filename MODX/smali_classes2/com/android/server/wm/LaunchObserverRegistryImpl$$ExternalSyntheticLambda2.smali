.class public final synthetic Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget v0, v0, Lcom/android/server/wm/LaunchObserverRegistryImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    move-object/from16 v0, p1

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 10
    .line 11
    move-object/from16 v1, p2

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    move-object/from16 v3, p3

    .line 20
    .line 21
    check-cast v3, Landroid/content/ComponentName;

    .line 22
    .line 23
    move-object/from16 v4, p4

    .line 24
    .line 25
    check-cast v4, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    move-object/from16 v5, p5

    .line 32
    .line 33
    check-cast v5, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 v6, 0x0

    .line 40
    :goto_0
    iget-object v7, v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-ge v6, v7, :cond_0

    .line 47
    .line 48
    iget-object v7, v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 55
    .line 56
    move-object p0, v7

    .line 57
    move/from16 p1, v4

    .line 58
    .line 59
    move/from16 p2, v5

    .line 60
    .line 61
    move-wide/from16 p3, v1

    .line 62
    .line 63
    move-object/from16 p5, v3

    .line 64
    .line 65
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunched(IIJLandroid/content/ComponentName;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void

    .line 72
    :pswitch_0
    move-object/from16 v0, p1

    .line 73
    .line 74
    check-cast v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;

    .line 75
    .line 76
    move-object/from16 v1, p2

    .line 77
    .line 78
    check-cast v1, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v9

    .line 84
    move-object/from16 v1, p3

    .line 85
    .line 86
    check-cast v1, Landroid/content/ComponentName;

    .line 87
    .line 88
    move-object/from16 v2, p4

    .line 89
    .line 90
    check-cast v2, Ljava/lang/Long;

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v11

    .line 96
    move-object/from16 v2, p5

    .line 97
    .line 98
    check-cast v2, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    const/4 v2, 0x0

    .line 105
    move v14, v2

    .line 106
    :goto_1
    iget-object v2, v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-ge v14, v2, :cond_1

    .line 113
    .line 114
    iget-object v2, v0, Lcom/android/server/wm/LaunchObserverRegistryImpl;->mList:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lcom/android/server/wm/ActivityMetricsLaunchObserver;

    .line 121
    .line 122
    move-wide v3, v9

    .line 123
    move-object v5, v1

    .line 124
    move-wide v6, v11

    .line 125
    move v8, v13

    .line 126
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;->onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v14, v14, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
