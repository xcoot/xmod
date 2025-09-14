.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$0:I

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$0:I

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$1:I

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 13
    .line 14
    if-ne v1, v0, :cond_2

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    :goto_1
    if-ltz v2, :cond_1

    .line 41
    .line 42
    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/android/server/am/ContentProviderConnection;

    .line 49
    .line 50
    iget-object v3, v3, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 51
    .line 52
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 53
    .line 54
    if-ne v3, p0, :cond_0

    .line 55
    .line 56
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p0, 0x0

    .line 66
    :goto_2
    return-object p0

    .line 67
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$0:I

    .line 68
    .line 69
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda18;->f$1:I

    .line 70
    .line 71
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 72
    .line 73
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 74
    .line 75
    if-ne v1, v0, :cond_6

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 78
    .line 79
    iget-object v0, p1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v1, 0x0

    .line 86
    move v2, v1

    .line 87
    :goto_3
    if-ge v2, v0, :cond_6

    .line 88
    .line 89
    iget-object v3, p1, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 90
    .line 91
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 96
    .line 97
    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    move v5, v1

    .line 104
    :goto_4
    if-ge v5, v4, :cond_5

    .line 105
    .line 106
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Ljava/util/ArrayList;

    .line 111
    .line 112
    move v7, v1

    .line 113
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-ge v7, v8, :cond_4

    .line 118
    .line 119
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 124
    .line 125
    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 126
    .line 127
    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 128
    .line 129
    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 130
    .line 131
    if-ne v8, p0, :cond_3

    .line 132
    .line 133
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    const/4 p0, 0x0

    .line 146
    :goto_6
    return-object p0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
