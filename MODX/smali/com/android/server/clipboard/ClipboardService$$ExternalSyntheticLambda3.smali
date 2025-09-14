.class public final synthetic Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/clipboard/ClipboardService;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Landroid/content/ClipData;

.field public final synthetic f$3:Landroid/view/textclassifier/TextClassifier;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/clipboard/ClipboardService;

    .line 6
    iput-object p2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/CharSequence;

    .line 8
    iput-object p3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$2:Landroid/content/ClipData;

    .line 10
    iput-object p4, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$3:Landroid/view/textclassifier/TextClassifier;

    .line 12
    iput p5, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$4:I

    .line 14
    iput p6, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$5:I

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/clipboard/ClipboardService;

    .line 3
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/CharSequence;

    .line 5
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$2:Landroid/content/ClipData;

    .line 7
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$3:Landroid/view/textclassifier/TextClassifier;

    .line 9
    iget v4, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$4:I

    .line 11
    iget p0, p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;->f$5:I

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v5, Landroid/view/textclassifier/TextLinks$Request$Builder;

    .line 18
    invoke-direct {v5, v1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v5}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    .line 24
    move-result-object v5

    .line 25
    invoke-interface {v3, v5}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    .line 28
    move-result-object v5

    .line 29
    new-instance v6, Landroid/util/ArrayMap;

    .line 31
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    invoke-virtual {v5}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    .line 37
    move-result-object v7

    .line 38
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v7

    .line 42
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v8

    .line 46
    const/4 v9, 0x0

    .line 47
    if-eqz v8, :cond_2

    .line 49
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 55
    :goto_0
    invoke-virtual {v8}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    .line 58
    move-result v10

    .line 59
    if-ge v9, v10, :cond_0

    .line 61
    invoke-virtual {v8, v9}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    .line 64
    move-result-object v10

    .line 65
    invoke-virtual {v8, v10}, Landroid/view/textclassifier/TextLinks$TextLink;->getConfidenceScore(Ljava/lang/String;)F

    .line 68
    move-result v11

    .line 69
    const/4 v12, 0x0

    .line 70
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    move-result-object v12

    .line 74
    invoke-virtual {v6, v10, v12}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v12

    .line 78
    check-cast v12, Ljava/lang/Float;

    .line 80
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    .line 83
    move-result v12

    .line 84
    cmpl-float v12, v11, v12

    .line 86
    if-lez v12, :cond_1

    .line 88
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    move-result-object v11

    .line 92
    invoke-virtual {v6, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object v7, v0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 100
    monitor-enter v7

    .line 101
    :try_start_0
    invoke-virtual {v0, v4, p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 104
    move-result-object v8

    .line 105
    if-nez v8, :cond_3

    .line 107
    monitor-exit v7

    .line 108
    goto :goto_2

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    iget-object v10, v8, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 113
    if-ne v10, v2, :cond_5

    .line 115
    invoke-virtual {v0, v8, v6, v5, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    .line 118
    invoke-virtual {v0, v4}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    .line 121
    move-result-object v2

    .line 122
    if-eqz v2, :cond_5

    .line 124
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 127
    move-result v8

    .line 128
    move v10, v9

    .line 129
    :goto_1
    if-ge v10, v8, :cond_5

    .line 131
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v11

    .line 135
    check-cast v11, Landroid/content/pm/UserInfo;

    .line 137
    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    .line 139
    if-eq v11, v4, :cond_4

    .line 141
    const-string/jumbo v12, "no_sharing_into_profile"

    .line 144
    invoke-virtual {v0, v11, v12}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(ILjava/lang/String;)Z

    .line 147
    move-result v12

    .line 148
    xor-int/lit8 v12, v12, 0x1

    .line 150
    if-eqz v12, :cond_4

    .line 152
    invoke-virtual {v0, v11, p0}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    .line 155
    move-result-object v11

    .line 156
    if-eqz v11, :cond_4

    .line 158
    iget-object v12, v11, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 160
    if-eqz v12, :cond_4

    .line 162
    invoke-virtual {v12}, Landroid/content/ClipData;->getItemCount()I

    .line 165
    move-result v12

    .line 166
    if-lez v12, :cond_4

    .line 168
    iget-object v12, v11, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 170
    invoke-virtual {v12, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 173
    move-result-object v12

    .line 174
    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 177
    move-result-object v12

    .line 178
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result v12

    .line 182
    if-eqz v12, :cond_4

    .line 184
    invoke-virtual {v0, v11, v6, v5, v3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    .line 187
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 189
    goto :goto_1

    .line 190
    :cond_5
    monitor-exit v7

    .line 191
    :goto_2
    return-void

    .line 192
    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    throw p0
.end method
