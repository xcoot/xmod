.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

.field public final synthetic f$1:Lcom/android/server/am/BroadcastRecord;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 3
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;->f$1:Lcom/android/server/am/BroadcastRecord;

    .line 5
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;->f$2:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;->f$2:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/os/BundleMerger;

    .line 5
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;->f$1:Lcom/android/server/am/BroadcastRecord;

    .line 12
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 14
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->mergeExtras(Landroid/content/Intent;Landroid/os/BundleMerger;)V

    .line 19
    iget-object p0, v1, Lcom/android/server/am/BroadcastQueueModernImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    .line 24
    return-void
.end method

.method public test(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;->f$2:Ljava/lang/Object;

    .line 3
    check-cast v0, Landroid/util/ArrayMap;

    .line 5
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 12
    aget v1, v1, p2

    .line 14
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 21
    goto/16 :goto_d

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda18;->f$1:Lcom/android/server/am/BroadcastRecord;

    .line 25
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 27
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 29
    if-ne v1, v3, :cond_14

    .line 31
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 33
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 35
    if-ne v1, v3, :cond_14

    .line 37
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v1, :cond_1

    .line 42
    move-object v1, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingFilter()Landroid/content/IntentFilter;

    .line 47
    move-result-object v1

    .line 48
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 50
    if-nez v4, :cond_2

    .line 52
    move-object v4, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingNamespaceFragment()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 60
    if-nez v5, :cond_3

    .line 62
    move-object v5, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingKeyFragment()Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    :goto_2
    if-eqz v4, :cond_4

    .line 70
    if-nez v5, :cond_8

    .line 72
    :cond_4
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 74
    if-nez v4, :cond_5

    .line 76
    move-object v4, v3

    .line 77
    goto :goto_3

    .line 78
    :cond_5
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingNamespaceFragment()Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    :goto_3
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 84
    if-nez v5, :cond_6

    .line 86
    move-object v5, v3

    .line 87
    goto :goto_4

    .line 88
    :cond_6
    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingKeyFragment()Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    :goto_4
    if-eqz v4, :cond_7

    .line 94
    if-nez v5, :cond_8

    .line 96
    :cond_7
    if-nez v1, :cond_8

    .line 98
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 100
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 102
    invoke-virtual {v1, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 105
    move-result v1

    .line 106
    goto :goto_a

    .line 107
    :cond_8
    if-eqz v1, :cond_9

    .line 109
    invoke-virtual {v1}, Landroid/content/IntentFilter;->asPredicate()Ljava/util/function/Predicate;

    .line 112
    move-result-object v1

    .line 113
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 115
    invoke-interface {v1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_9

    .line 121
    :goto_5
    move v1, v2

    .line 122
    goto :goto_a

    .line 123
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 125
    if-nez v1, :cond_a

    .line 127
    move-object v1, v3

    .line 128
    goto :goto_6

    .line 129
    :cond_a
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingNamespaceFragment()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    :goto_6
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 135
    if-nez v4, :cond_b

    .line 137
    move-object v4, v3

    .line 138
    goto :goto_7

    .line 139
    :cond_b
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingNamespaceFragment()Ljava/lang/String;

    .line 142
    move-result-object v4

    .line 143
    :goto_7
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_c

    .line 149
    goto :goto_5

    .line 150
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 152
    if-nez v1, :cond_d

    .line 154
    move-object v1, v3

    .line 155
    goto :goto_8

    .line 156
    :cond_d
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingKeyFragment()Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 160
    :goto_8
    iget-object v4, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 162
    if-nez v4, :cond_e

    .line 164
    goto :goto_9

    .line 165
    :cond_e
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getDeliveryGroupMatchingKeyFragment()Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 169
    :goto_9
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    move-result v1

    .line 173
    :goto_a
    if-nez v1, :cond_f

    .line 175
    goto :goto_d

    .line 176
    :cond_f
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 178
    if-nez v1, :cond_13

    .line 180
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    .line 182
    if-eqz v1, :cond_10

    .line 184
    goto :goto_c

    .line 185
    :cond_10
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 187
    if-eqz v1, :cond_12

    .line 189
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 191
    aget v1, v1, p2

    .line 193
    const/4 v2, 0x6

    .line 194
    if-ne v1, v2, :cond_11

    .line 196
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 198
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    .line 205
    move-result p0

    .line 206
    :goto_b
    move v2, p0

    .line 207
    goto :goto_d

    .line 208
    :cond_11
    invoke-static {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    .line 211
    move-result p0

    .line 212
    goto :goto_b

    .line 213
    :cond_12
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 215
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    .line 222
    move-result v2

    .line 223
    goto :goto_d

    .line 224
    :cond_13
    :goto_c
    invoke-static {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueModernImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    .line 227
    move-result v2

    .line 228
    :cond_14
    :goto_d
    return v2
.end method
