.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Ljava/util/List;

    .line 10
    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 12
    new-instance v0, Landroid/util/ArraySet;

    .line 14
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 17
    iput-object v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

    .line 19
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 22
    move-result p0

    .line 23
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillableTotalCount:I

    .line 25
    return-void

    .line 26
    :pswitch_0
    check-cast p0, Landroid/view/autofill/AutofillId;

    .line 28
    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 30
    iget-object v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofillIdsAttemptedAutofill:Landroid/util/ArraySet;

    .line 32
    const-string v1, "PresentationStatsEventLogger"

    .line 34
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string v2, "Attempted autofill ids is null, but received autofillId:"

    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string p0, " successfully filled"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 60
    add-int/lit8 p0, p0, 0x1

    .line 62
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 71
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 73
    if-eqz v2, :cond_1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    const-string v3, "Logging autofill for id:"

    .line 79
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    iget v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 96
    iput v1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillSuccessCount:I

    .line 98
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

    .line 103
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget-object v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAlreadyFilledAutofillIds:Landroid/util/ArraySet;

    .line 109
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 112
    move-result v2

    .line 113
    const-string v3, "Successfully filled autofillId:"

    .line 115
    if-eqz v2, :cond_3

    .line 117
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 119
    if-eqz p1, :cond_4

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    const-string p0, " already processed "

    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_0

    .line 142
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    const-string p0, " not found in list of attempted autofill ids: "

    .line 152
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p0

    .line 162
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 167
    add-int/lit8 p0, p0, 0x1

    .line 169
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFilledButUnexpectedCount:I

    .line 171
    :cond_4
    :goto_0
    return-void

    .line 172
    :pswitch_1
    check-cast p0, Landroid/view/autofill/AutofillId;

    .line 174
    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    .line 176
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    .line 179
    move-result v0

    .line 180
    iput v0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    .line 182
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->isVirtualInt()Z

    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_5

    .line 188
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getVirtualChildIntId()I

    .line 191
    move-result p0

    .line 192
    rem-int/lit8 p0, p0, 0x64

    .line 194
    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedVirtualAutofillId:I

    .line 196
    :cond_5
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
