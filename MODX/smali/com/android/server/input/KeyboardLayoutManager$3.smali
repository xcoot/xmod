.class public final Lcom/android/server/input/KeyboardLayoutManager$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;


# instance fields
.field public mDeviceSpecificLayoutAvailable:Z

.field public final synthetic val$imeLanguageTag:Ljava/lang/String;

.field public final synthetic val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

.field public final synthetic val$potentialLayouts:Ljava/util/ArrayList;

.field public final synthetic val$userSelectedLayout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 6
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    .line 8
    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$imeLanguageTag:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$userSelectedLayout:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$keyboardIdentifier:Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 7
    iget-object v0, p2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 9
    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 11
    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_1

    .line 17
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    .line 20
    move-result p1

    .line 21
    iget-object p2, p2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 23
    check-cast p2, Landroid/hardware/input/InputDeviceIdentifier;

    .line 25
    invoke-virtual {p2}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    .line 28
    move-result p2

    .line 29
    if-ne p1, p2, :cond_1

    .line 31
    iget-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->mDeviceSpecificLayoutAvailable:Z

    .line 33
    if-nez p1, :cond_0

    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->mDeviceSpecificLayoutAvailable:Z

    .line 38
    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    goto/16 :goto_4

    .line 50
    :cond_1
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    .line 53
    move-result p1

    .line 54
    const/4 p2, -0x1

    .line 55
    if-ne p1, p2, :cond_8

    .line 57
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    .line 60
    move-result p1

    .line 61
    if-ne p1, p2, :cond_8

    .line 63
    iget-boolean p1, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->mDeviceSpecificLayoutAvailable:Z

    .line 65
    if-nez p1, :cond_8

    .line 67
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_7

    .line 77
    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$imeLanguageTag:Ljava/lang/String;

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    invoke-static {p2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 89
    move-result-object p2

    .line 90
    invoke-static {p2}, Lcom/android/server/input/KeyboardLayoutManager;->getScriptCodes(Ljava/util/Locale;)[I

    .line 93
    move-result-object p2

    .line 94
    array-length v0, p2

    .line 95
    if-nez v0, :cond_3

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    const/4 v0, 0x0

    .line 99
    move v1, v0

    .line 100
    :goto_0
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    .line 103
    move-result v2

    .line 104
    if-ge v1, v2, :cond_8

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2}, Lcom/android/server/input/KeyboardLayoutManager;->getScriptCodes(Ljava/util/Locale;)[I

    .line 113
    move-result-object v2

    .line 114
    array-length v3, v2

    .line 115
    move v4, v0

    .line 116
    :goto_1
    if-ge v4, v3, :cond_6

    .line 118
    aget v5, v2, v4

    .line 120
    array-length v6, p2

    .line 121
    move v7, v0

    .line 122
    :goto_2
    if-ge v7, v6, :cond_5

    .line 124
    aget v8, p2, v7

    .line 126
    if-ne v5, v8, :cond_4

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 137
    goto :goto_0

    .line 138
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_4

    .line 144
    :cond_8
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$userSelectedLayout:Ljava/lang/String;

    .line 150
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_9

    .line 156
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$3;->val$potentialLayouts:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_9
    :goto_4
    return-void
.end method
