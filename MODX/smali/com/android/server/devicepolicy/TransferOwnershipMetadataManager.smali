.class public final Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final TAG_ADMIN_TYPE:Ljava/lang/String; = "admin-type"

.field static final TAG_SOURCE_COMPONENT:Ljava/lang/String; = "source-component"

.field static final TAG_TARGET_COMPONENT:Ljava/lang/String; = "target-component"

.field static final TAG_USER_ID:Ljava/lang/String; = "user-id"


# instance fields
.field public final mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    .line 6
    return-void
.end method

.method public static parseMetadataFile(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move v7, v3

    .line 10
    move-object v5, v4

    .line 11
    move-object v6, v5

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 15
    move-result v8

    .line 16
    if-eq v8, v1, :cond_7

    .line 18
    if-ne v8, v0, :cond_1

    .line 20
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 23
    move-result v9

    .line 24
    if-le v9, v2, :cond_7

    .line 26
    :cond_1
    if-eq v8, v0, :cond_0

    .line 28
    const/4 v9, 0x4

    .line 29
    if-ne v8, v9, :cond_2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 35
    move-result-object v8

    .line 36
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const/4 v9, -0x1

    .line 40
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 43
    move-result v10

    .line 44
    sparse-switch v10, :sswitch_data_0

    .line 47
    goto :goto_1

    .line 48
    :sswitch_0
    const-string v10, "admin-type"

    .line 50
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v8

    .line 54
    if-nez v8, :cond_3

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move v9, v0

    .line 58
    goto :goto_1

    .line 59
    :sswitch_1
    const-string/jumbo v10, "source-component"

    .line 62
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_4

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const/4 v9, 0x2

    .line 70
    goto :goto_1

    .line 71
    :sswitch_2
    const-string/jumbo v10, "user-id"

    .line 74
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v8

    .line 78
    if-nez v8, :cond_5

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    move v9, v1

    .line 82
    goto :goto_1

    .line 83
    :sswitch_3
    const-string/jumbo v10, "target-component"

    .line 86
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v8

    .line 90
    if-nez v8, :cond_6

    .line 92
    goto :goto_1

    .line 93
    :cond_6
    move v9, v3

    .line 94
    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 97
    goto :goto_0

    .line 98
    :pswitch_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 101
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    goto :goto_0

    .line 106
    :pswitch_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 109
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    goto :goto_0

    .line 114
    :pswitch_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 117
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 120
    move-result-object v7

    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 124
    move-result v7

    .line 125
    goto :goto_0

    .line 126
    :pswitch_3
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 129
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    goto :goto_0

    .line 134
    :cond_7
    new-instance p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    .line 136
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 142
    move-result-object v0

    .line 143
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 149
    move-result-object v1

    .line 150
    invoke-direct {p0, v0, v1, v7, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 153
    return-object p0

    .line 154
    nop

    .line 155
    :sswitch_data_0
    .sparse-switch
        -0x1419903f -> :sswitch_3
        -0x8c5cda3 -> :sswitch_2
        0x10c541cb -> :sswitch_1
        0x264366f8 -> :sswitch_0
    .end sparse-switch

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
