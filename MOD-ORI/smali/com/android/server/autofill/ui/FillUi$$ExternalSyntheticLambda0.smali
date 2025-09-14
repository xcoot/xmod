.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/FillUi;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/FillUi;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/FillUi;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/FillUi;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :goto_0
    iget-object v3, v0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 23
    .line 24
    const-string v4, "FillUi"

    .line 25
    .line 26
    if-gtz p1, :cond_3

    .line 27
    .line 28
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    const-string p0, "No dataset matches filter with "

    .line 33
    .line 34
    const-string p1, " chars"

    .line 35
    .line 36
    invoke-static {v1, p0, p1, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/AutoFillUI$1;->requestHideFillUi()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :cond_3
    iget p1, v0, Lcom/android/server/autofill/ui/FillUi;->mMaxInputLengthForAutofill:I

    .line 45
    .line 46
    if-le v1, p1, :cond_5

    .line 47
    .line 48
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 49
    .line 50
    if-eqz p0, :cond_4

    .line 51
    .line 52
    const-string p0, "Not showing fill UI because user entered more than "

    .line 53
    .line 54
    const-string v0, " characters"

    .line 55
    .line 56
    invoke-static {p1, p0, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/AutoFillUI$1;->requestHideFillUi()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_7

    .line 63
    .line 64
    :cond_5
    const/4 p1, 0x1

    .line 65
    iget v1, v0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 66
    .line 67
    iget-object v3, v0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 68
    .line 69
    if-nez v3, :cond_6

    .line 70
    .line 71
    move v4, v2

    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_6
    iget-boolean v4, v0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 75
    .line 76
    if-eqz v4, :cond_7

    .line 77
    .line 78
    :goto_1
    move v4, p1

    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-gtz v4, :cond_9

    .line 86
    .line 87
    iget v4, v0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 88
    .line 89
    if-eqz v4, :cond_8

    .line 90
    .line 91
    iput v2, v0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 92
    .line 93
    move v4, p1

    .line 94
    goto :goto_2

    .line 95
    :cond_8
    move v4, v2

    .line 96
    :goto_2
    iget v5, v0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 97
    .line 98
    if-eqz v5, :cond_e

    .line 99
    .line 100
    iput v2, v0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_9
    iget-object v4, v0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 104
    .line 105
    iget-object v5, v0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v5, v4}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 108
    .line 109
    .line 110
    iput v2, v0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 111
    .line 112
    iput v2, v0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 113
    .line 114
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 115
    .line 116
    const/high16 v6, -0x80000000

    .line 117
    .line 118
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    iget v7, v4, Landroid/graphics/Point;->y:I

    .line 123
    .line 124
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    iget-object v8, v0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 133
    .line 134
    if-eqz v8, :cond_a

    .line 135
    .line 136
    invoke-virtual {v8, v5, v6}, Landroid/view/View;->measure(II)V

    .line 137
    .line 138
    .line 139
    iget-object v8, v0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v0, v8, v4}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    iget-object v9, v0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v0, v9, v4}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    or-int/2addr v8, v9

    .line 152
    goto :goto_3

    .line 153
    :cond_a
    move v8, v2

    .line 154
    :goto_3
    move v9, v2

    .line 155
    :goto_4
    if-ge v9, v7, :cond_c

    .line 156
    .line 157
    iget-object v10, v3, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->mFilteredItems:Ljava/util/List;

    .line 158
    .line 159
    check-cast v10, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    check-cast v10, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    .line 166
    .line 167
    iget-object v10, v10, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {v10, v5, v6}, Landroid/view/View;->measure(II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v10, v4}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    or-int/2addr v8, v11

    .line 177
    if-ge v9, v1, :cond_b

    .line 178
    .line 179
    invoke-virtual {v0, v10, v4}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    or-int/2addr v8, v10

    .line 184
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_c
    iget-object v7, v0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 188
    .line 189
    if-eqz v7, :cond_d

    .line 190
    .line 191
    invoke-virtual {v7, v5, v6}, Landroid/view/View;->measure(II)V

    .line 192
    .line 193
    .line 194
    iget-object v5, v0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {v0, v5, v4}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    or-int/2addr v5, v8

    .line 201
    iget-object v6, v0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 202
    .line 203
    invoke-virtual {v0, v6, v4}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    or-int/2addr v4, v5

    .line 208
    goto :goto_5

    .line 209
    :cond_d
    move v4, v8

    .line 210
    :cond_e
    :goto_5
    if-eqz v4, :cond_f

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 213
    .line 214
    .line 215
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-le v4, v1, :cond_10

    .line 220
    .line 221
    iget-object v1, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 222
    .line 223
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 227
    .line 228
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_10
    iget-object p1, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 233
    .line 234
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 235
    .line 236
    .line 237
    :goto_6
    invoke-virtual {v3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eq p1, p0, :cond_11

    .line 242
    .line 243
    iget-object p0, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 246
    .line 247
    .line 248
    :cond_11
    :goto_7
    return-void
.end method
