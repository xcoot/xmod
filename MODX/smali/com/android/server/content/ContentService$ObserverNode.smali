.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mChildren:Ljava/util/ArrayList;

.field public final mName:Ljava/lang/String;

.field public final mObservers:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    move-object v8, p1

    .line 3
    move v0, p2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v8, :cond_0

    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 16
    move-result v3

    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 19
    :goto_0
    if-ne v0, v3, :cond_1

    .line 21
    iget-object v9, v1, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 23
    new-instance v10, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 25
    move-object v0, v10

    .line 26
    move-object v1, p0

    .line 27
    move-object v2, p3

    .line 28
    move v3, p4

    .line 29
    move-object/from16 v4, p5

    .line 31
    move/from16 v5, p6

    .line 33
    move/from16 v6, p7

    .line 35
    move/from16 v7, p8

    .line 37
    move-object v8, p1

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/net/Uri;)V

    .line 41
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void

    .line 45
    :cond_1
    if-eqz v8, :cond_3

    .line 47
    if-nez v0, :cond_2

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 57
    move-result-object v3

    .line 58
    add-int/lit8 v4, v0, -0x1

    .line 60
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/String;

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 v3, 0x0

    .line 68
    :goto_1
    if-eqz v3, :cond_6

    .line 70
    iget-object v4, v1, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v4

    .line 76
    :goto_2
    if-ge v2, v4, :cond_5

    .line 78
    iget-object v5, v1, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode;

    .line 86
    iget-object v6, v5, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 88
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_4

    .line 94
    add-int/lit8 v2, v0, 0x1

    .line 96
    move-object v0, v5

    .line 97
    move-object v1, p1

    .line 98
    move-object v3, p3

    .line 99
    move v4, p4

    .line 100
    move-object/from16 v5, p5

    .line 102
    move/from16 v6, p6

    .line 104
    move/from16 v7, p7

    .line 106
    move/from16 v8, p8

    .line 108
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 111
    return-void

    .line 112
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    new-instance v2, Lcom/android/server/content/ContentService$ObserverNode;

    .line 117
    invoke-direct {v2, v3}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v1, v1, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v3, v0, 0x1

    .line 127
    move-object v0, v2

    .line 128
    move-object v1, p1

    .line 129
    move v2, v3

    .line 130
    move-object v3, p3

    .line 131
    move v4, p4

    .line 132
    move-object/from16 v5, p5

    .line 134
    move/from16 v6, p6

    .line 136
    move/from16 v7, p7

    .line 138
    move/from16 v8, p8

    .line 140
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 143
    return-void

    .line 144
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    const-string v2, "Invalid Uri ("

    .line 150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v2, ") used for observer"

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v1

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    throw v0
.end method

.method public final collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v7, p6

    .line 4
    move-object/from16 v8, p7

    .line 6
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v9

    .line 12
    if-nez p3, :cond_0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    move-object v10, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    const/4 v11, 0x0

    .line 23
    move/from16 v1, p5

    .line 25
    move v12, v11

    .line 26
    :goto_2
    if-ge v12, v9, :cond_9

    .line 28
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 36
    iget-object v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 38
    invoke-interface {v3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    .line 41
    move-result-object v3

    .line 42
    if-ne v3, v10, :cond_1

    .line 44
    const/4 v3, 0x1

    .line 45
    move v4, v3

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    move v4, v11

    .line 48
    :goto_3
    if-eqz v4, :cond_2

    .line 50
    if-nez p4, :cond_2

    .line 52
    goto :goto_4

    .line 53
    :cond_2
    const/4 v3, -0x1

    .line 54
    if-eq v7, v3, :cond_3

    .line 56
    iget v5, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    .line 58
    if-eq v5, v3, :cond_3

    .line 60
    if-ne v7, v5, :cond_5

    .line 62
    :cond_3
    if-eqz p2, :cond_4

    .line 64
    and-int/lit8 v3, v1, 0x2

    .line 66
    if-eqz v3, :cond_6

    .line 68
    iget-boolean v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    .line 70
    if-eqz v3, :cond_6

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    iget-boolean v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    .line 75
    if-nez v3, :cond_6

    .line 77
    :cond_5
    :goto_4
    move-object/from16 v2, p1

    .line 79
    goto :goto_5

    .line 80
    :cond_6
    iget-boolean v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->noDelay:Z

    .line 82
    if-eqz v3, :cond_7

    .line 84
    const v3, 0x8000

    .line 87
    or-int/2addr v1, v3

    .line 88
    :cond_7
    move v13, v1

    .line 89
    iget-object v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 91
    iget v5, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 93
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    new-instance v14, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 98
    move-object v1, v14

    .line 99
    move-object v2, v3

    .line 100
    move v3, v5

    .line 101
    move v5, v13

    .line 102
    move/from16 v6, p6

    .line 104
    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/ContentService$ObserverCollector$Key;-><init>(Landroid/database/IContentObserver;IZII)V

    .line 107
    iget-object v1, v8, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    .line 109
    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ljava/util/List;

    .line 115
    if-nez v1, :cond_8

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    .line 119
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v2, v8, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    .line 124
    invoke-virtual {v2, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_8
    move-object/from16 v2, p1

    .line 129
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    move v1, v13

    .line 133
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 135
    goto :goto_2

    .line 136
    :cond_9
    return-void
.end method

.method public final collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v15, p2

    move/from16 v14, p3

    const/4 v9, 0x0

    if-lt v14, v15, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    goto :goto_1

    :cond_0
    if-ge v14, v15, :cond_3

    if-eqz p1, :cond_2

    if-nez v14, :cond_1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v14, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 6
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    :cond_3
    :goto_1
    move-object v0, v9

    .line 7
    iget-object v1, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    .line 8
    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/server/content/ContentService$ObserverNode;

    if-eqz v0, :cond_4

    .line 9
    iget-object v3, v9, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    add-int/lit8 v12, v14, 0x1

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    .line 10
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v15, p2

    move/from16 v14, p3

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .locals 9

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v2, v0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 2
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    move-object/from16 v1, p3

    .line 6
    move-object/from16 v8, p5

    .line 8
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v2

    .line 14
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 16
    const-string v4, "/"

    .line 18
    const-string v5, ""

    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-lez v2, :cond_3

    .line 25
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    move-object v2, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v1, v4, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    :goto_0
    move v11, v9

    .line 38
    :goto_1
    iget-object v12, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v12

    .line 44
    if-ge v11, v12, :cond_2

    .line 46
    aget v12, p4, v10

    .line 48
    add-int/2addr v12, v10

    .line 49
    aput v12, p4, v10

    .line 51
    iget-object v12, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object v12

    .line 57
    check-cast v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 59
    iget v13, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    .line 61
    invoke-virtual {v8, v13}, Landroid/util/SparseIntArray;->get(I)I

    .line 64
    move-result v14

    .line 65
    add-int/2addr v14, v10

    .line 66
    invoke-virtual {v8, v13, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    const-string v13, "  "

    .line 71
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    const-string v13, ": pid="

    .line 79
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    iget v13, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->pid:I

    .line 84
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 87
    const-string v13, " uid="

    .line 89
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget v13, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    .line 94
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 97
    const-string v13, " user="

    .line 99
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    iget v13, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->userHandle:I

    .line 104
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 107
    const-string v13, " target="

    .line 109
    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    iget-object v12, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 114
    if-eqz v12, :cond_1

    .line 116
    invoke-interface {v12}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    .line 119
    move-result-object v12

    .line 120
    goto :goto_2

    .line 121
    :cond_1
    move-object v12, v6

    .line 122
    :goto_2
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 125
    move-result v12

    .line 126
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 129
    move-result-object v12

    .line 130
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v11, v11, 0x1

    .line 135
    goto :goto_1

    .line 136
    :cond_2
    move-object v6, v2

    .line 137
    :cond_3
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 142
    move-result v2

    .line 143
    if-lez v2, :cond_6

    .line 145
    if-nez v6, :cond_5

    .line 147
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_4

    .line 153
    :goto_3
    move-object v11, v3

    .line 154
    goto :goto_4

    .line 155
    :cond_4
    invoke-static {v1, v4, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v3

    .line 159
    goto :goto_3

    .line 160
    :cond_5
    move-object v11, v6

    .line 161
    :goto_4
    move v12, v9

    .line 162
    :goto_5
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 167
    move-result v1

    .line 168
    if-ge v12, v1, :cond_6

    .line 170
    aget v1, p4, v9

    .line 172
    add-int/2addr v1, v10

    .line 173
    aput v1, p4, v9

    .line 175
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Lcom/android/server/content/ContentService$ObserverNode;

    .line 183
    move-object/from16 v2, p1

    .line 185
    move-object/from16 v3, p2

    .line 187
    move-object v4, v11

    .line 188
    move-object/from16 v5, p4

    .line 190
    move-object/from16 v6, p5

    .line 192
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 195
    add-int/lit8 v12, v12, 0x1

    .line 197
    goto :goto_5

    .line 198
    :cond_6
    return-void
.end method

.method public final removeObserverLocked(Landroid/database/IContentObserver;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, 0x1

    .line 10
    if-ge v2, v0, :cond_1

    .line 12
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode;

    .line 20
    invoke-virtual {v4, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 26
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 35
    :cond_0
    add-int/2addr v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    .line 40
    move-result-object v0

    .line 41
    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v2

    .line 47
    move v4, v1

    .line 48
    :goto_1
    if-ge v4, v2, :cond_3

    .line 50
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 58
    iget-object v6, v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .line 60
    invoke-interface {v6}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    .line 63
    move-result-object v6

    .line 64
    if-ne v6, v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 73
    invoke-virtual {v0, p1, v5}, Lcom/android/internal/os/BinderDeathDispatcher;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_4

    .line 88
    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_4

    .line 96
    return v3

    .line 97
    :cond_4
    return v1
.end method
