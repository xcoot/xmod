.class public final Lcom/android/server/input/KeyboardLayoutManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAvailableLayouts:Ljava/util/HashSet;

.field public final mConfiguredKeyboards:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mHandler:Landroid/os/Handler;

.field public final mImeInfoLock:Ljava/lang/Object;

.field public final mKeyboardLayoutCache:Ljava/util/Map;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "KeyboardLayoutManager"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mAvailableLayouts:Ljava/util/HashSet;

    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 36
    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 38
    new-instance p1, Landroid/os/Handler;

    .line 40
    new-instance p2, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;

    .line 42
    invoke-direct {p2, p0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/KeyboardLayoutManager;)V

    .line 45
    const/4 p3, 0x1

    .line 46
    invoke-direct {p1, p4, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 49
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method public static getDefaultKeyboardLayoutBasedOnImeInfo(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;[Landroid/hardware/input/KeyboardLayout;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .locals 8

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 4
    array-length v0, p2

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/4 v2, 0x2

    .line 7
    const-string v3, " : "

    .line 9
    const-string v4, "KeyboardLayoutManager"

    .line 11
    if-ge v1, v0, :cond_2

    .line 13
    aget-object v5, p2, v1

    .line 15
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    .line 18
    move-result v6

    .line 19
    iget-object v7, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 21
    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 23
    invoke-virtual {v7}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    .line 26
    move-result v7

    .line 27
    if-ne v6, v7, :cond_1

    .line 29
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    .line 32
    move-result v6

    .line 33
    iget-object v7, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 35
    check-cast v7, Landroid/hardware/input/InputDeviceIdentifier;

    .line 37
    invoke-virtual {v7}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    .line 40
    move-result v7

    .line 41
    if-ne v6, v7, :cond_1

    .line 43
    sget-boolean p1, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    .line 45
    if-eqz p1, :cond_0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo p2, "getDefaultKeyboardLayoutBasedOnImeInfo() : Layout found based on vendor and product Ids. "

    .line 52
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    new-instance p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 77
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    .line 84
    return-object p0

    .line 85
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 90
    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 92
    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    .line 95
    move-result v0

    .line 96
    const/4 v1, 0x1

    .line 97
    if-ne v0, v1, :cond_4

    .line 99
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 101
    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 103
    invoke-virtual {v0}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    .line 106
    move-result v0

    .line 107
    if-eq v0, v1, :cond_3

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLanguageTag:Ljava/lang/String;

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 114
    :goto_2
    if-eqz v0, :cond_5

    .line 116
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLayoutType:Ljava/lang/String;

    .line 118
    invoke-static {p2, v0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTagAndLayoutType([Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_5

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo p2, "getDefaultKeyboardLayoutBasedOnImeInfo() : Layout found based on HW information (Language tag and Layout type). "

    .line 129
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object p0

    .line 145
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 150
    invoke-direct {p0, v0, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    .line 153
    return-object p0

    .line 154
    :cond_5
    if-eqz p1, :cond_9

    .line 156
    iget-object v0, p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 158
    if-eqz v0, :cond_9

    .line 160
    iget-object p1, p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 162
    if-nez p1, :cond_6

    .line 164
    goto :goto_4

    .line 165
    :cond_6
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 175
    goto :goto_3

    .line 176
    :cond_7
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    :goto_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLayoutType()Ljava/lang/String;

    .line 183
    move-result-object p1

    .line 184
    invoke-static {p2, v0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTagAndLayoutType([Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    .line 190
    const-string/jumbo v1, "getDefaultKeyboardLayoutBasedOnImeInfo() : Layout found based on IME locale matching. "

    .line 193
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string p0, ", LanguageTag : "

    .line 207
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {p2, v0, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-eqz p1, :cond_8

    .line 215
    new-instance p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 217
    const/4 p2, 0x3

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    .line 221
    return-object p0

    .line 222
    :cond_8
    sget-object p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 224
    return-object p0

    .line 225
    :cond_9
    :goto_4
    sget-object p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 227
    return-object p0
.end method

.method public static getMatchingLayoutForProvidedLanguageTag(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_8

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    .line 23
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    .line 31
    move-result v5

    .line 32
    if-ge v4, v5, :cond_0

    .line 34
    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 37
    move-result-object v5

    .line 38
    if-nez v5, :cond_1

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_2

    .line 55
    goto :goto_3

    .line 56
    :cond_2
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v6

    .line 68
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    .line 70
    const/high16 v9, 0x3f800000    # 1.0f

    .line 72
    if-eqz v6, :cond_3

    .line 74
    const/high16 v6, 0x40000000    # 2.0f

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_4

    .line 87
    float-to-double v10, v9

    .line 88
    add-double/2addr v10, v7

    .line 89
    double-to-float v6, v10

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    move v6, v9

    .line 92
    :goto_1
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    .line 95
    move-result-object v10

    .line 96
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    .line 99
    move-result-object v11

    .line 100
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v10

    .line 104
    if-eqz v10, :cond_5

    .line 106
    add-float/2addr v6, v9

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_6

    .line 118
    float-to-double v5, v6

    .line 119
    add-double/2addr v5, v7

    .line 120
    double-to-float v6, v5

    .line 121
    :cond_6
    :goto_2
    cmpl-float v5, v6, v1

    .line 123
    if-lez v5, :cond_7

    .line 125
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    move v1, v6

    .line 130
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 132
    goto :goto_0

    .line 133
    :cond_8
    return-object v0
.end method

.method public static getMatchingLayoutForProvidedLanguageTagAndLayoutType([Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-static {p2}, Landroid/hardware/input/KeyboardLayout;->isLayoutTypeValid(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    :cond_0
    const-string/jumbo p2, "undefined"

    .line 12
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    array-length v1, p0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_3

    .line 21
    aget-object v3, p0, v2

    .line 23
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLayoutType()Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 33
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-static {p1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTag(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_4

    .line 45
    return-object p2

    .line 46
    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {p1, p0}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTag(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static getScriptCodes(Ljava/util/Locale;)[I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    new-array p0, v0, [I

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 17
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x1

    .line 26
    if-eq v1, v2, :cond_1

    .line 28
    filled-new-array {v1}, [I

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-static {p0}, Landroid/icu/lang/UScript;->getCode(Ljava/util/Locale;)[I

    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_2

    .line 39
    return-object p0

    .line 40
    :cond_2
    new-array p0, v0, [I

    .line 42
    return-object p0
.end method

.method public static logKeyboardConfigurationEvent(Landroid/view/InputDevice;Ljava/util/List;Ljava/util/List;Z)V
    .locals 16

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_e

    .line 8
    move-object/from16 v1, p2

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 18
    goto/16 :goto_9

    .line 20
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    const/4 v5, 0x0

    .line 36
    move v6, v5

    .line 37
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 40
    move-result v7

    .line 41
    if-ge v6, v7, :cond_5

    .line 43
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v9, 0x4

    .line 51
    if-eqz v7, :cond_2

    .line 53
    invoke-virtual {v7}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    .line 56
    move-result-object v10

    .line 57
    if-eqz v10, :cond_2

    .line 59
    invoke-virtual {v7}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getSelectionCriteria()I

    .line 62
    move-result v10

    .line 63
    invoke-virtual {v7}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    invoke-static {v7}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->parse(Ljava/lang/String;)Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 70
    move-result-object v7

    .line 71
    if-eqz v7, :cond_1

    .line 73
    iget-object v7, v7, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 75
    move-object v8, v7

    .line 76
    check-cast v8, Ljava/lang/String;

    .line 78
    :cond_1
    move-object/from16 v7, p1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move-object/from16 v7, p1

    .line 83
    move v10, v9

    .line 84
    :goto_1
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v11

    .line 88
    check-cast v11, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 90
    iget-object v11, v11, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 92
    const-string v12, "IME subtype provided should not be null"

    .line 94
    invoke-static {v11, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    sget-boolean v12, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    .line 99
    if-eq v10, v0, :cond_4

    .line 101
    const/4 v12, 0x2

    .line 102
    if-eq v10, v12, :cond_4

    .line 104
    const/4 v12, 0x3

    .line 105
    if-eq v10, v12, :cond_4

    .line 107
    if-ne v10, v9, :cond_3

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 112
    const-string v1, "Invalid layout selection criteria"

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    throw v0

    .line 118
    :cond_4
    :goto_2
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/2addr v6, v0

    .line 132
    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_d

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    .line 141
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :goto_3
    if-ge v5, v1, :cond_a

    .line 146
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v7

    .line 150
    check-cast v7, Ljava/lang/Integer;

    .line 152
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 155
    move-result v10

    .line 156
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object v7

    .line 160
    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/view/InputDevice;->getKeyboardLanguageTag()Ljava/lang/String;

    .line 165
    move-result-object v8

    .line 166
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    move-result v9

    .line 170
    const-string v11, "None"

    .line 172
    if-eqz v9, :cond_6

    .line 174
    move-object v12, v11

    .line 175
    goto :goto_4

    .line 176
    :cond_6
    move-object v12, v8

    .line 177
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/InputDevice;->getKeyboardLayoutType()Ljava/lang/String;

    .line 180
    move-result-object v8

    .line 181
    invoke-static {v8}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutTypeEnumValue(Ljava/lang/String;)I

    .line 184
    move-result v9

    .line 185
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    .line 188
    move-result-object v8

    .line 189
    if-eqz v8, :cond_7

    .line 191
    invoke-virtual {v8}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    .line 194
    move-result-object v8

    .line 195
    goto :goto_5

    .line 196
    :cond_7
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    .line 199
    move-result-object v8

    .line 200
    :goto_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    move-result v13

    .line 204
    if-eqz v13, :cond_8

    .line 206
    move-object v13, v11

    .line 207
    goto :goto_6

    .line 208
    :cond_8
    move-object v13, v8

    .line 209
    :goto_6
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLayoutType()Ljava/lang/String;

    .line 212
    move-result-object v7

    .line 213
    invoke-static {v7}, Landroid/hardware/input/KeyboardLayout$LayoutType;->getLayoutTypeEnumValue(Ljava/lang/String;)I

    .line 216
    move-result v14

    .line 217
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    move-result-object v7

    .line 221
    if-nez v7, :cond_9

    .line 223
    const-string v7, "Default"

    .line 225
    goto :goto_7

    .line 226
    :cond_9
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object v7

    .line 230
    check-cast v7, Ljava/lang/String;

    .line 232
    :goto_7
    new-instance v15, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;

    .line 234
    move-object v8, v15

    .line 235
    move-object v11, v12

    .line 236
    move-object v12, v7

    .line 237
    invoke-direct/range {v8 .. v14}, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/2addr v5, v0

    .line 244
    goto :goto_3

    .line 245
    :cond_a
    new-instance v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;

    .line 247
    move-object/from16 v1, p0

    .line 249
    move/from16 v2, p3

    .line 251
    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;-><init>(Landroid/view/InputDevice;ZLjava/util/List;)V

    .line 254
    sget-boolean v1, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    .line 256
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 258
    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 261
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 264
    move-result-object v2

    .line 265
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_b

    .line 271
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    move-result-object v3

    .line 275
    check-cast v3, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;

    .line 277
    const-wide v4, 0x20b00000001L

    .line 282
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 285
    move-result-wide v4

    .line 286
    iget-object v6, v3, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLanguageTag:Ljava/lang/String;

    .line 288
    const-wide v7, 0x10900000002L

    .line 293
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 296
    const-wide v6, 0x10500000001L

    .line 301
    iget v8, v3, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutType:I

    .line 303
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 306
    const-wide v6, 0x10900000003L

    .line 311
    iget-object v8, v3, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->keyboardLayoutName:Ljava/lang/String;

    .line 313
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 316
    const-wide v6, 0x10500000004L

    .line 321
    iget v8, v3, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->layoutSelectionCriteria:I

    .line 323
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 326
    const-wide v6, 0x10900000006L

    .line 331
    iget-object v8, v3, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLanguageTag:Ljava/lang/String;

    .line 333
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 336
    const-wide v6, 0x10500000005L

    .line 341
    iget v3, v3, Lcom/android/server/input/KeyboardMetricsCollector$LayoutConfiguration;->imeLayoutType:I

    .line 343
    invoke-virtual {v1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 346
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 349
    goto :goto_8

    .line 350
    :cond_b
    iget-object v2, v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 352
    invoke-virtual {v2}, Landroid/view/InputDevice;->getVendorId()I

    .line 355
    move-result v5

    .line 356
    iget-object v2, v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 358
    invoke-virtual {v2}, Landroid/view/InputDevice;->getProductId()I

    .line 361
    move-result v6

    .line 362
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 365
    move-result-object v7

    .line 366
    iget-object v1, v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mInputDevice:Landroid/view/InputDevice;

    .line 368
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDeviceBus()I

    .line 371
    move-result v8

    .line 372
    const/16 v3, 0x2aa

    .line 374
    iget-boolean v4, v0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;->mIsFirstConfiguration:Z

    .line 376
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZII[BI)V

    .line 379
    sget-boolean v1, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    .line 381
    if-eqz v1, :cond_c

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    .line 385
    const-string v2, "Logging Keyboard configuration event: "

    .line 387
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object v0

    .line 397
    const-string v1, "KeyboardMetricCollector"

    .line 399
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_c
    return-void

    .line 403
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 405
    const-string v1, "Should have at least one configuration"

    .line 407
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 410
    throw v0

    .line 411
    :cond_e
    :goto_9
    return-void
.end method

.method public static visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 9
    if-nez v3, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const-string v4, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    .line 14
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 17
    move-result v3

    .line 18
    const-string v4, "KeyboardLayoutManager"

    .line 20
    const-string v5, "/"

    .line 22
    if-nez v3, :cond_1

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 41
    invoke-static {v0, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 48
    move-result-object v6

    .line 49
    if-eqz v6, :cond_2

    .line 51
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 54
    move-result-object v6

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string v6, ""

    .line 58
    :goto_0
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 60
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 62
    const/4 v15, 0x1

    .line 63
    and-int/2addr v8, v15

    .line 64
    const/4 v14, 0x0

    .line 65
    if-eqz v8, :cond_3

    .line 67
    move/from16 v16, p3

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move/from16 v16, v14

    .line 72
    :goto_1
    :try_start_0
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 79
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    const-string/jumbo v7, "keyboard-layouts"

    .line 83
    invoke-static {v3, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 86
    :goto_2
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 89
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 92
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 93
    if-nez v7, :cond_4

    .line 95
    :try_start_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    goto/16 :goto_f

    .line 100
    :catch_0
    move-exception v0

    .line 101
    goto/16 :goto_e

    .line 103
    :cond_4
    :try_start_3
    const-string/jumbo v8, "keyboard-layout"

    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_c

    .line 112
    sget-object v7, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    .line 114
    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 117
    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 118
    :try_start_4
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v8

    .line 126
    const-string/jumbo v9, "style"

    .line 129
    const-string/jumbo v10, "http://schemas.android.com/apk/res-auto"

    .line 132
    invoke-interface {v3, v10, v9, v14}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    .line 135
    move-result v11

    .line 136
    if-nez v11, :cond_5

    .line 138
    invoke-interface {v3, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v9

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 146
    move-result-object v9

    .line 147
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    move-result v10

    .line 151
    if-nez v10, :cond_6

    .line 153
    const-string v10, ","
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    :try_start_5
    const-string/jumbo v11, "comma"

    .line 158
    const-string/jumbo v12, "string"

    .line 161
    const-string/jumbo v15, "com.android.inputdevices"

    .line 164
    invoke-virtual {v0, v11, v12, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    move-result v11

    .line 168
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 171
    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    goto :goto_4

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    move-object/from16 v21, v13

    .line 176
    goto/16 :goto_a

    .line 178
    :catch_1
    :goto_4
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v8, " "

    .line 191
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v8

    .line 201
    :cond_6
    move-object v9, v8

    .line 202
    const/4 v8, 0x2

    .line 203
    invoke-virtual {v13, v8, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 206
    move-result v15

    .line 207
    const/4 v8, 0x3

    .line 208
    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 211
    move-result-object v8

    .line 212
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    move-result v10

    .line 216
    if-eqz v10, :cond_7

    .line 218
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 221
    move-result-object v8

    .line 222
    :goto_5
    move-object v12, v8

    .line 223
    goto :goto_6

    .line 224
    :cond_7
    const/16 v10, 0x7c

    .line 226
    const/16 v11, 0x2c

    .line 228
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 231
    move-result-object v8

    .line 232
    invoke-static {v8}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 235
    move-result-object v8

    .line 236
    goto :goto_5

    .line 237
    :goto_6
    const/4 v8, 0x4

    .line 238
    invoke-virtual {v13, v8, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 241
    move-result v18

    .line 242
    const/4 v8, 0x6

    .line 243
    const/4 v10, -0x1

    .line 244
    invoke-virtual {v13, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 247
    move-result v19

    .line 248
    const/4 v8, 0x5

    .line 249
    invoke-virtual {v13, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 252
    move-result v20

    .line 253
    if-eqz v7, :cond_8

    .line 255
    if-eqz v9, :cond_8

    .line 257
    if-nez v15, :cond_9

    .line 259
    :cond_8
    move-object/from16 v8, p4

    .line 261
    move-object/from16 v19, v6

    .line 263
    move-object/from16 v21, v13

    .line 265
    move/from16 v18, v14

    .line 267
    const/16 v17, 0x1

    .line 269
    goto :goto_8

    .line 270
    :cond_9
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 272
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 274
    new-instance v11, Ljava/lang/StringBuilder;

    .line 276
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v8

    .line 298
    if-eqz v2, :cond_b

    .line 300
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v7

    .line 304
    if-eqz v7, :cond_a

    .line 306
    goto :goto_7

    .line 307
    :cond_a
    move-object/from16 v8, p4

    .line 309
    move-object/from16 v19, v6

    .line 311
    move-object/from16 v21, v13

    .line 313
    move/from16 v18, v14

    .line 315
    const/16 v17, 0x1

    .line 317
    goto :goto_9

    .line 318
    :cond_b
    :goto_7
    new-instance v11, Landroid/hardware/input/KeyboardLayout;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 320
    move-object v7, v11

    .line 321
    move-object v10, v6

    .line 322
    move-object v2, v11

    .line 323
    move/from16 v11, v16

    .line 325
    move-object/from16 v21, v13

    .line 327
    move/from16 v13, v18

    .line 329
    move/from16 v18, v14

    .line 331
    move/from16 v14, v19

    .line 333
    move-object/from16 v19, v6

    .line 335
    move v6, v15

    .line 336
    const/16 v17, 0x1

    .line 338
    move/from16 v15, v20

    .line 340
    :try_start_7
    invoke-direct/range {v7 .. v15}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;III)V

    .line 343
    move-object/from16 v8, p4

    .line 345
    invoke-interface {v8, v0, v6, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    .line 348
    goto :goto_9

    .line 349
    :catchall_1
    move-exception v0

    .line 350
    goto :goto_a

    .line 351
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    const-string v6, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    .line 358
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 363
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 371
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    move-result-object v2

    .line 378
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 381
    :goto_9
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    goto :goto_b

    .line 385
    :catchall_2
    move-exception v0

    .line 386
    move-object v2, v0

    .line 387
    goto :goto_c

    .line 388
    :goto_a
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 391
    throw v0

    .line 392
    :cond_c
    move-object/from16 v8, p4

    .line 394
    move-object/from16 v19, v6

    .line 396
    move/from16 v18, v14

    .line 398
    move/from16 v17, v15

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    .line 402
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    const-string v6, "Skipping unrecognized element \'"

    .line 407
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v6, "\' in keyboard layout resource from receiver "

    .line 415
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 420
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 428
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    move-result-object v2

    .line 435
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 438
    :goto_b
    move-object/from16 v2, p2

    .line 440
    move/from16 v15, v17

    .line 442
    move/from16 v14, v18

    .line 444
    move-object/from16 v6, v19

    .line 446
    goto/16 :goto_2

    .line 448
    :goto_c
    if-eqz v3, :cond_d

    .line 450
    :try_start_9
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 453
    goto :goto_d

    .line 454
    :catchall_3
    move-exception v0

    .line 455
    move-object v3, v0

    .line 456
    :try_start_a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 459
    :cond_d
    :goto_d
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 460
    :goto_e
    new-instance v2, Ljava/lang/StringBuilder;

    .line 462
    const-string v3, "Could not parse keyboard layout resource from receiver "

    .line 464
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 477
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    move-result-object v1

    .line 484
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    :goto_f
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "mCurrentImeInfo: userId="

    .line 4
    const-string v1, "KeyboardLayoutManager:"

    .line 6
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 12
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 17
    if-eqz v2, :cond_2

    .line 19
    iget-object v2, v2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 21
    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto/16 :goto_6

    .line 37
    :cond_0
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x0

    .line 43
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 50
    iget v0, v0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mUserId:I

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v0, ", subtypeHandle="

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 62
    iget-object v0, v0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, ", subtype="

    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 74
    iget-object v0, v0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string v0, ", languageTag="

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const-string/jumbo v0, "mCurrentImeInfo: null"

    .line 98
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 101
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const-string/jumbo v0, "mConfiguredKeyboards:"

    .line 105
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 111
    const/4 v0, 0x0

    .line 112
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 114
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 117
    move-result v1

    .line 118
    if-ge v0, v1, :cond_4

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v2, "Device "

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 132
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 135
    move-result v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    const-string v2, ": "

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 154
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 156
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 162
    const-string v2, "Configured layouts:"

    .line 164
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 170
    iget-object v1, v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    .line 172
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 175
    move-result-object v1

    .line 176
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_3

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Ljava/lang/String;

    .line 188
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 191
    goto :goto_3

    .line 192
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 195
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 200
    goto :goto_2

    .line 201
    :catch_0
    const-string/jumbo v0, "failed to dump"

    .line 204
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 207
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 210
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 212
    monitor-enter v0

    .line 213
    :try_start_2
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 215
    check-cast v1, Landroid/util/ArrayMap;

    .line 217
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_5

    .line 223
    const-string v1, "Keyboard layout cache:"

    .line 225
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 230
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda2;

    .line 232
    invoke-direct {v2, p1}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda2;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 235
    check-cast v1, Landroid/util/ArrayMap;

    .line 237
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 240
    goto :goto_4

    .line 241
    :catchall_1
    move-exception p0

    .line 242
    goto :goto_5

    .line 243
    :cond_5
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 247
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 249
    monitor-enter v1

    .line 250
    :try_start_3
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    const-string v2, "Data store:"

    .line 257
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 263
    iget-object v2, v0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 265
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_6

    .line 271
    iget-object v0, v0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 273
    new-instance v2, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;

    .line 275
    const/4 v3, 0x0

    .line 276
    invoke-direct {v2, p1, v3}, Lcom/android/server/input/PersistentDataStore$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;I)V

    .line 279
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 282
    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 285
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 286
    const-string v0, "All Keyboard Layouts:"

    .line 288
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$1;

    .line 293
    invoke-direct {v0, p1}, Lcom/android/server/input/KeyboardLayoutManager$1;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 299
    return-void

    .line 300
    :catchall_2
    move-exception p0

    .line 301
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 302
    throw p0

    .line 303
    :goto_5
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 304
    throw p0

    .line 305
    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 306
    throw p0
.end method

.method public getImeInfoListForLayoutMapping()Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 8
    const-class v2, Landroid/os/UserManager;

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/os/UserManager;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Landroid/os/UserManager;

    .line 22
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 24
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 26
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 32
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-object v2, p0

    .line 36
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 38
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v1

    .line 51
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_3

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/os/UserHandle;

    .line 63
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 66
    move-result v4

    .line 67
    invoke-virtual {v2, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v5

    .line 75
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_0

    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 87
    invoke-virtual {p0, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    .line 90
    move-result-object v7

    .line 91
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v7

    .line 95
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_1

    .line 101
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v8

    .line 105
    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 107
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_2

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    new-instance v9, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 116
    invoke-direct {v9, v4, v6, v8}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 119
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_0

    .line 123
    :cond_3
    return-object v0
.end method

.method public final getInputDevice(I)Landroid/view/InputDevice;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 4

    .line 1
    const-string/jumbo v0, "keyboardLayoutDescriptor must not be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 10
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 19
    const/4 p0, 0x0

    .line 20
    aget-object v1, v0, p0

    .line 22
    if-nez v1, :cond_0

    .line 24
    const-string v1, "Could not get keyboard layout with descriptor \'"

    .line 26
    const-string v2, "\'."

    .line 28
    const-string v3, "KeyboardLayoutManager"

    .line 30
    invoke-static {v1, p1, v2, v3}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    aget-object p0, v0, p0

    .line 35
    return-object p0
.end method

.method public final getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 10
    const-string/jumbo v1, "subtypeHandle must not be null"

    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v1, "layoutDescriptor:"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ",userId:"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mUserId:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ",subtypeHandle:"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 44
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->toStringHandle()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 67
    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 75
    if-eqz v2, :cond_1

    .line 77
    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 79
    check-cast v2, Landroid/util/ArrayMap;

    .line 81
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Ljava/lang/String;

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v2, 0x0

    .line 89
    :goto_1
    if-eqz v2, :cond_2

    .line 91
    new-instance p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 93
    const/4 p1, 0x1

    .line 94
    invoke-direct {p0, v2, p1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    .line 97
    monitor-exit v1

    .line 98
    return-object p0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_3

    .line 101
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 104
    monitor-enter v2

    .line 105
    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 107
    check-cast v1, Landroid/util/ArrayMap;

    .line 109
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_3

    .line 115
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 117
    check-cast p0, Landroid/util/ArrayMap;

    .line 119
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object p0

    .line 123
    check-cast p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 125
    monitor-exit v2

    .line 126
    return-object p0

    .line 127
    :catchall_1
    move-exception p0

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;

    .line 132
    move-result-object v1

    .line 133
    invoke-static {p1, p2, v1}, Lcom/android/server/input/KeyboardLayoutManager;->getDefaultKeyboardLayoutBasedOnImeInfo(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;[Landroid/hardware/input/KeyboardLayout;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 136
    move-result-object p1

    .line 137
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 139
    check-cast p0, Landroid/util/ArrayMap;

    .line 141
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v2

    .line 145
    return-object p1

    .line 146
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    throw p0

    .line 148
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    throw p0
.end method

.method public final getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 10
    const-string/jumbo v1, "subtypeHandle must not be null"

    .line 13
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v1, "layoutDescriptor:"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ",userId:"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mUserId:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ",subtypeHandle:"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 44
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->toStringHandle()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 67
    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 75
    if-eqz v2, :cond_1

    .line 77
    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mKeyboardLayoutMap:Ljava/util/Map;

    .line 79
    check-cast v2, Landroid/util/ArrayMap;

    .line 81
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/String;

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 89
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    .line 92
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    if-eqz p2, :cond_4

    .line 97
    iget-object v2, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 99
    if-nez v2, :cond_2

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    .line 111
    move-result-object p2

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    iget-object p2, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 115
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    .line 118
    move-result-object p2

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    :goto_2
    const-string p2, ""

    .line 122
    :goto_3
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$3;

    .line 124
    invoke-direct {v2, p1, v1, p2, v0}, Lcom/android/server/input/KeyboardLayoutManager$3;-><init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 130
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 133
    const/4 p0, 0x0

    .line 134
    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    .line 136
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    move-result-object p0

    .line 140
    check-cast p0, [Landroid/hardware/input/KeyboardLayout;

    .line 142
    return-object p0

    .line 143
    :catchall_0
    move-exception p0

    .line 144
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    throw p0
.end method

.method public isVirtualDevice(I)Z
    .locals 0

    .line 1
    const-class p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isInputDeviceOwnedByVirtualDevice(I)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final onInputDeviceAdded(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceChangedInternal(IZ)V

    .line 5
    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceChangedInternal(IZ)V

    .line 5
    return-void
.end method

.method public final onInputDeviceChangedInternal(IZ)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_15

    .line 13
    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    goto/16 :goto_b

    .line 21
    :cond_0
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 23
    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;)V

    .line 26
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 34
    if-nez v2, :cond_1

    .line 36
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 38
    invoke-direct {v2, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;-><init>(I)V

    .line 41
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    .line 48
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->getImeInfoListForLayoutMapping()Ljava/util/List;

    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v5

    .line 64
    const/4 v6, 0x0

    .line 65
    move v7, v6

    .line 66
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v8

    .line 70
    const/4 v9, 0x1

    .line 71
    if-eqz v8, :cond_3

    .line 73
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v8

    .line 77
    check-cast v8, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 79
    invoke-virtual {p0, v1, v8}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v8}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    .line 86
    move-result-object v10

    .line 87
    if-eqz v10, :cond_2

    .line 89
    invoke-virtual {v8}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {p1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    move v7, v9

    .line 98
    :goto_1
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    sget-boolean v5, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    .line 104
    if-eqz v5, :cond_4

    .line 106
    const-string v5, "KeyboardLayoutManager"

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    .line 110
    const-string v10, "Layouts selected for input device: "

    .line 112
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    const-string v10, " -> selectedLayouts: "

    .line 120
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v8

    .line 130
    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_4
    if-eqz v7, :cond_5

    .line 135
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 138
    :cond_5
    iput-object p1, v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    .line 140
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 142
    monitor-enter v2

    .line 143
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    iget-object v5, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 149
    invoke-virtual {v5, v1}, Lcom/android/server/input/PersistentDataStore;->getOrCreateInputDeviceState(Ljava/lang/String;)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 152
    move-result-object v7

    .line 153
    iget-object v8, v7, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    .line 155
    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_6

    .line 161
    move p1, v6

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    new-instance v8, Ljava/util/HashSet;

    .line 165
    invoke-direct {v8, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 168
    iput-object v8, v7, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mSelectedKeyboardLayouts:Ljava/util/Set;

    .line 170
    iput-boolean v9, v5, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    .line 172
    move p1, v9

    .line 173
    :goto_2
    if-eqz p2, :cond_8

    .line 175
    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 177
    invoke-virtual {p2}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    .line 180
    iget-object p2, p2, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    .line 182
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-result-object p2

    .line 186
    check-cast p2, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    .line 188
    if-eqz p2, :cond_7

    .line 190
    move p2, v6

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    move p2, v9

    .line 193
    :goto_3
    invoke-static {v0, v3, v4, p2}, Lcom/android/server/input/KeyboardLayoutManager;->logKeyboardConfigurationEvent(Landroid/view/InputDevice;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    goto :goto_4

    .line 197
    :catchall_0
    move-exception p1

    .line 198
    goto/16 :goto_9

    .line 200
    :cond_8
    :goto_4
    :try_start_1
    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 202
    invoke-virtual {p2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 205
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    if-eqz p1, :cond_14

    .line 208
    new-instance p1, Ljava/util/ArrayList;

    .line 210
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    move p2, v6

    .line 214
    :goto_5
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 216
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 219
    move-result v0

    .line 220
    const/4 v1, 0x0

    .line 221
    if-ge p2, v0, :cond_d

    .line 223
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 225
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 228
    move-result v0

    .line 229
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 231
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardLayoutManager;->isVirtualDevice(I)Z

    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_9

    .line 243
    goto :goto_6

    .line 244
    :cond_9
    iget-object v0, v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    .line 246
    if-eqz v0, :cond_a

    .line 248
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 251
    move-result v0

    .line 252
    if-nez v0, :cond_a

    .line 254
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :goto_6
    add-int/lit8 p2, p2, 0x1

    .line 259
    goto :goto_5

    .line 260
    :cond_a
    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    move-result-object p1

    .line 266
    const p2, 0x1040d7c

    .line 269
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 272
    move-result-object p2

    .line 273
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 275
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 278
    move-result v0

    .line 279
    if-ne v0, v9, :cond_c

    .line 281
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 283
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 286
    move-result v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 290
    move-result-object v0

    .line 291
    if-nez v0, :cond_b

    .line 293
    goto/16 :goto_8

    .line 295
    :cond_b
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 298
    move-result-object v1

    .line 299
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 302
    move-result-object v1

    .line 303
    const v2, 0x1040d7d

    .line 306
    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    .line 313
    goto/16 :goto_8

    .line 315
    :cond_c
    const v0, 0x1040d7f

    .line 318
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 321
    move-result-object p1

    .line 322
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    .line 325
    goto/16 :goto_8

    .line 327
    :cond_d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 330
    move-result p2

    .line 331
    if-nez p2, :cond_f

    .line 333
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 335
    const-class p1, Landroid/app/NotificationManager;

    .line 337
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 340
    move-result-object p0

    .line 341
    check-cast p0, Landroid/app/NotificationManager;

    .line 343
    if-nez p0, :cond_e

    .line 345
    goto/16 :goto_8

    .line 347
    :cond_e
    const/16 p1, 0x13

    .line 349
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 351
    invoke-virtual {p0, v1, p1, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 354
    goto/16 :goto_8

    .line 356
    :cond_f
    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 361
    move-result-object p2

    .line 362
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 365
    move-result v0

    .line 366
    if-eq v0, v9, :cond_10

    .line 368
    const p1, 0x10406bf

    .line 371
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 374
    move-result-object p1

    .line 375
    const v0, 0x10406be

    .line 378
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 381
    move-result-object p2

    .line 382
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    .line 385
    goto/16 :goto_8

    .line 387
    :cond_10
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 390
    move-result-object p1

    .line 391
    check-cast p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 393
    iget v0, p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mDeviceId:I

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 398
    move-result-object v0

    .line 399
    if-eqz v0, :cond_14

    .line 401
    iget-object v1, p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    .line 403
    if-eqz v1, :cond_14

    .line 405
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 408
    move-result v1

    .line 409
    if-nez v1, :cond_14

    .line 411
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 414
    move-result-object v1

    .line 415
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 418
    move-result-object v1

    .line 419
    const v2, 0x10406c1

    .line 422
    invoke-virtual {p2, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 425
    move-result-object p2

    .line 426
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 428
    iget-object p1, p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->mConfiguredLayouts:Ljava/util/Set;

    .line 430
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 433
    move-result-object v1

    .line 434
    new-instance v2, Ljava/util/ArrayList;

    .line 436
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 439
    new-instance v3, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda7;

    .line 441
    invoke-direct {v3, p0, v2}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/input/KeyboardLayoutManager;Ljava/util/List;)V

    .line 444
    invoke-interface {p1, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 447
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 450
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 453
    move-result p1

    .line 454
    if-eq p1, v9, :cond_13

    .line 456
    const/4 v3, 0x2

    .line 457
    if-eq p1, v3, :cond_12

    .line 459
    const/4 v4, 0x3

    .line 460
    if-eq p1, v4, :cond_11

    .line 462
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    move-result-object v4

    .line 470
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 473
    move-result-object v2

    .line 474
    filled-new-array {p1, v4, v2}, [Ljava/lang/Object;

    .line 477
    move-result-object p1

    .line 478
    const v2, 0x10406bd

    .line 481
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 484
    move-result-object p1

    .line 485
    goto :goto_7

    .line 486
    :cond_11
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 489
    move-result-object p1

    .line 490
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 493
    move-result-object v4

    .line 494
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 497
    move-result-object v2

    .line 498
    filled-new-array {p1, v4, v2}, [Ljava/lang/Object;

    .line 501
    move-result-object p1

    .line 502
    const v2, 0x10406c2

    .line 505
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 508
    move-result-object p1

    .line 509
    goto :goto_7

    .line 510
    :cond_12
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    move-result-object p1

    .line 514
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 517
    move-result-object v2

    .line 518
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 521
    move-result-object p1

    .line 522
    const v2, 0x10406c3

    .line 525
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 528
    move-result-object p1

    .line 529
    goto :goto_7

    .line 530
    :cond_13
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    move-result-object p1

    .line 534
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 537
    move-result-object p1

    .line 538
    const v2, 0x10406c0

    .line 541
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 544
    move-result-object p1

    .line 545
    :goto_7
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    .line 548
    :cond_14
    :goto_8
    return-void

    .line 549
    :catchall_1
    move-exception p0

    .line 550
    goto :goto_a

    .line 551
    :goto_9
    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 553
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 556
    throw p1

    .line 557
    :goto_a
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 558
    throw p0

    .line 559
    :cond_15
    :goto_b
    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6
    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 16
    const-class p1, Landroid/app/NotificationManager;

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/app/NotificationManager;

    .line 24
    if-nez p0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 29
    const/4 v0, 0x0

    .line 30
    const/16 v1, 0x13

    .line 32
    invoke-virtual {p0, v0, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/app/NotificationManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/NotificationManager;

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .line 16
    const-string v1, "android.settings.HARD_KEYBOARD_SETTINGS"

    .line 18
    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    if-eqz p3, :cond_1

    .line 23
    const-string/jumbo v1, "input_device_identifier"

    .line 26
    invoke-virtual {p3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {v3, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    const-string/jumbo p3, "com.android.settings.inputmethod.EXTRA_ENTRYPOINT"

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    :cond_1
    const/high16 p3, 0x14200000

    .line 42
    invoke-virtual {v3, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 47
    const/4 v5, 0x0

    .line 48
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 50
    const/4 v2, 0x0

    .line 51
    const/high16 v4, 0x4000000

    .line 53
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 56
    move-result-object p3

    .line 57
    new-instance v1, Landroid/app/Notification$Builder;

    .line 59
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 61
    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->PHYSICAL_KEYBOARD:Ljava/lang/String;

    .line 63
    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 77
    move-result-object p1

    .line 78
    const p2, 0x10805c1

    .line 81
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 84
    move-result-object p1

    .line 85
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 87
    const p2, 0x106001c

    .line 90
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    .line 93
    move-result p0

    .line 94
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 97
    move-result-object p0

    .line 98
    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 106
    move-result-object p0

    .line 107
    const/16 p1, 0x13

    .line 109
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 111
    const/4 p3, 0x0

    .line 112
    invoke-virtual {v0, p3, p1, p0, p2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 115
    return-void
.end method

.method public final updateKeyboardLayouts()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v1, v2, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 15
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mAvailableLayouts:Ljava/util/HashSet;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mAvailableLayouts:Ljava/util/HashSet;

    .line 26
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 36
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 39
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 42
    monitor-enter v0

    .line 43
    :try_start_2
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 45
    check-cast v1, Landroid/util/ArrayMap;

    .line 47
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 50
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    sget-boolean v0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    .line 53
    if-eqz v0, :cond_1

    .line 55
    const-string v0, "KeyboardLayoutManager"

    .line 57
    const-string v1, "Reloading keyboard layouts."

    .line 59
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 64
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadKeyboardLayouts()V

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    throw p0

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :catchall_2
    move-exception v0

    .line 74
    :try_start_4
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 76
    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 79
    throw v0

    .line 80
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    throw p0
.end method

.method public final visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 9
    const-string v1, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const v1, 0xc0080

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 38
    if-eqz v1, :cond_0

    .line 40
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 42
    if-nez v2, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget v1, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static {p0, v2, v3, v1, p1}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method public final visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->parse(Ljava/lang/String;)Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object p0

    .line 13
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    .line 15
    iget-object v1, p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLanguageTag:Ljava/lang/String;

    .line 17
    iget-object v2, p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mLayoutType:Ljava/lang/String;

    .line 19
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const v1, 0xc0080

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 28
    move-result-object v0

    .line 29
    iget-object p1, p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->mIdentifier:Ljava/lang/Object;

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    :cond_0
    return-void
.end method
