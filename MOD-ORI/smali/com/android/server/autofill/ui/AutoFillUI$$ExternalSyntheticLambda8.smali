.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/CharSequence;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 15
    .line 16
    if-eq v2, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Ljava/lang/String;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 48
    .line 49
    if-eq v1, v2, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    .line 53
    .line 54
    if-eqz v0, :cond_8

    .line 55
    .line 56
    iget-boolean v1, v0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    .line 57
    .line 58
    if-nez v1, :cond_7

    .line 59
    .line 60
    iget-object v1, v0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    .line 61
    .line 62
    if-nez v1, :cond_4

    .line 63
    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget-object p0, v0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI$1;->requestHideFillUi()V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    if-nez p0, :cond_5

    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :goto_1
    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iput-object p0, v0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    new-instance v2, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;

    .line 104
    .line 105
    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter$1;-><init>(Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v3, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-direct {v3, v0, p0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    const-string/jumbo v0, "cannot interact with a destroyed instance"

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0

    .line 128
    :cond_8
    :goto_2
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
