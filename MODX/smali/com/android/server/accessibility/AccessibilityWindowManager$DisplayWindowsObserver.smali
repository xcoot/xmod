.class public final Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# instance fields
.field public final mA11yWindowInfoById:Landroid/util/SparseArray;

.field public final mCachedWindowInfos:Ljava/util/List;

.field public final mDisplayId:I

.field public mHasWatchOutsideTouchWindow:Z

.field public mIsProxy:Z

.field public mProxyDisplayAccessibilityFocusedWindow:I

.field public mTrackingWindows:Z

.field public final mWindowInfoById:Landroid/util/SparseArray;

.field public mWindows:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 13
    new-instance p1, Landroid/util/SparseArray;

    .line 15
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 30
    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 33
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 35
    return-void
.end method


# virtual methods
.method public final cacheWindows(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 11
    :goto_0
    if-ltz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/view/WindowInfo;

    .line 23
    invoke-virtual {v1}, Landroid/view/WindowInfo;->recycle()V

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-ge v1, v0, :cond_1

    .line 38
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/view/WindowInfo;

    .line 44
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 46
    invoke-static {v2}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    .line 49
    move-result-object v2

    .line 50
    check-cast v3, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return-void
.end method

.method public final createWindowInfoListLocked(Landroid/graphics/Point;Ljava/util/List;)Ljava/util/List;
    .locals 13

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v2, Landroid/graphics/Region;

    .line 13
    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 16
    new-instance v3, Landroid/graphics/Region;

    .line 18
    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 21
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 23
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 25
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 27
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 29
    new-instance v5, Landroid/graphics/Region;

    .line 31
    iget v6, p1, Landroid/graphics/Point;->x:I

    .line 33
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-direct {v5, v7, v7, v6, p1}, Landroid/graphics/Region;-><init>(IIII)V

    .line 39
    check-cast p2, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p1

    .line 45
    move p2, v7

    .line 46
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_10

    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    .line 58
    iget-object v8, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    .line 60
    invoke-virtual {v2, v8}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 63
    iget-object v8, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    .line 65
    iget-object v9, v8, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 67
    if-eqz v9, :cond_1

    .line 69
    invoke-virtual {p0, v4, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    .line 72
    move-result v9

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v9, -0x1

    .line 75
    :goto_0
    iget-boolean v10, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIgnoreDuetoRecentsAnimation:Z

    .line 77
    if-eqz v10, :cond_2

    .line 79
    goto/16 :goto_6

    .line 81
    :cond_2
    iget-boolean v10, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    .line 83
    const/16 v11, 0x7f2

    .line 85
    if-eqz v10, :cond_3

    .line 87
    goto/16 :goto_3

    .line 89
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    .line 92
    move-result v10

    .line 93
    if-nez v10, :cond_4

    .line 95
    iget v10, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 97
    if-eq v10, v11, :cond_4

    .line 99
    iget-boolean v10, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    .line 101
    if-nez v10, :cond_4

    .line 103
    goto/16 :goto_6

    .line 105
    :cond_4
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 107
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 110
    move-result v10

    .line 111
    if-nez v10, :cond_5

    .line 113
    :goto_1
    move v10, v7

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    .line 117
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 120
    move-result-object v10

    .line 121
    check-cast v10, Landroid/os/IBinder;

    .line 123
    if-nez v10, :cond_6

    .line 125
    goto :goto_1

    .line 126
    :cond_6
    iget-object v12, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    .line 128
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 131
    move-result v10

    .line 132
    :goto_2
    if-eqz v10, :cond_7

    .line 134
    goto/16 :goto_6

    .line 136
    :cond_7
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTmpRegion:Landroid/graphics/Region;

    .line 138
    sget-object v12, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 140
    invoke-virtual {v10, v5, v2, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 143
    move-result v10

    .line 144
    if-nez v10, :cond_8

    .line 146
    goto/16 :goto_6

    .line 148
    :cond_8
    iget v10, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 150
    const/16 v12, 0x7dd

    .line 152
    if-eq v10, v12, :cond_d

    .line 154
    const/16 v12, 0x7e5

    .line 156
    if-eq v10, v12, :cond_d

    .line 158
    const/16 v12, 0x7ea

    .line 160
    if-eq v10, v12, :cond_d

    .line 162
    const/16 v12, 0x7e0

    .line 164
    if-eq v10, v12, :cond_d

    .line 166
    const/16 v12, 0x7e6

    .line 168
    if-eq v10, v12, :cond_d

    .line 170
    const/16 v12, 0x7e2

    .line 172
    if-eq v10, v12, :cond_d

    .line 174
    const/16 v12, 0x7eb

    .line 176
    if-eq v10, v12, :cond_d

    .line 178
    const/16 v12, 0x3ec

    .line 180
    if-eq v10, v12, :cond_d

    .line 182
    const/16 v12, 0x7df

    .line 184
    if-eq v10, v12, :cond_d

    .line 186
    const/16 v12, 0x7ee

    .line 188
    if-eq v10, v12, :cond_d

    .line 190
    :goto_3
    if-ltz v9, :cond_a

    .line 192
    iget-object v10, v8, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    .line 194
    invoke-virtual {v10, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 197
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 200
    move-result v10

    .line 201
    iput v10, v8, Landroid/view/WindowInfo;->layer:I

    .line 203
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    .line 205
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 208
    move-result-object v9

    .line 209
    check-cast v9, Landroid/view/accessibility/AccessibilityWindowAttributes;

    .line 211
    if-nez v9, :cond_9

    .line 213
    goto :goto_4

    .line 214
    :cond_9
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowAttributes;->getWindowTitle()Ljava/lang/CharSequence;

    .line 217
    move-result-object v10

    .line 218
    iput-object v10, v8, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 220
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowAttributes;->getLocales()Landroid/os/LocaleList;

    .line 223
    move-result-object v9

    .line 224
    iput-object v9, v8, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    .line 226
    :goto_4
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v8, v8, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 231
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_a
    invoke-virtual {v6}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->isTouchable()Z

    .line 237
    move-result v8

    .line 238
    if-nez v8, :cond_b

    .line 240
    iget v8, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 242
    if-eq v8, v11, :cond_b

    .line 244
    iget v8, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    .line 246
    and-int/lit16 v8, v8, 0x100

    .line 248
    if-eqz v8, :cond_b

    .line 250
    goto :goto_5

    .line 251
    :cond_b
    iget v8, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 253
    const/16 v9, 0x7f0

    .line 255
    if-ne v8, v9, :cond_c

    .line 257
    goto :goto_5

    .line 258
    :cond_c
    iget-object v8, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 260
    invoke-virtual {v3, v8}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 263
    sget-object v8, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 265
    invoke-virtual {v5, v3, v5, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 268
    :goto_5
    iget-boolean v6, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    .line 270
    or-int/2addr p2, v6

    .line 271
    goto :goto_8

    .line 272
    :cond_d
    :goto_6
    iget v8, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    .line 274
    const/16 v9, 0x7e3

    .line 276
    if-eq v8, v9, :cond_e

    .line 278
    move v8, v7

    .line 279
    goto :goto_7

    .line 280
    :cond_e
    iget-object v8, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    .line 282
    invoke-virtual {v8}, Landroid/graphics/Region;->isEmpty()Z

    .line 285
    move-result v8

    .line 286
    :goto_7
    if-eqz v8, :cond_f

    .line 288
    iget-object v6, v6, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    .line 290
    if-eqz v6, :cond_f

    .line 292
    sget-object v8, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 294
    invoke-virtual {v5, v6, v5, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 297
    :cond_f
    :goto_8
    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    .line 300
    move-result v6

    .line 301
    if-eqz v6, :cond_0

    .line 303
    if-eqz p2, :cond_0

    .line 305
    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 308
    move-result-object p0

    .line 309
    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    move-result p1

    .line 313
    if-eqz p1, :cond_14

    .line 315
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Landroid/view/WindowInfo;

    .line 321
    iget-object p2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 323
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 326
    move-result p2

    .line 327
    if-nez p2, :cond_12

    .line 329
    const/4 p2, 0x0

    .line 330
    iput-object p2, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 332
    :cond_12
    iget-object p2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 334
    if-eqz p2, :cond_11

    .line 336
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 339
    move-result p2

    .line 340
    add-int/lit8 p2, p2, -0x1

    .line 342
    :goto_9
    if-ltz p2, :cond_11

    .line 344
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 346
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 353
    move-result v2

    .line 354
    if-nez v2, :cond_13

    .line 356
    iget-object v2, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 358
    invoke-interface {v2, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 361
    :cond_13
    add-int/lit8 p2, p2, -0x1

    .line 363
    goto :goto_9

    .line 364
    :cond_14
    return-object v1
.end method

.method public final getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/WindowInfo;

    .line 9
    if-eqz p1, :cond_2

    .line 11
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 13
    if-eqz v0, :cond_2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 26
    move-result v2

    .line 27
    if-ge v1, v2, :cond_1

    .line 29
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/WindowInfo;

    .line 37
    if-eqz v2, :cond_0

    .line 39
    iget v3, v2, Landroid/view/WindowInfo;->layer:I

    .line 41
    iget v4, p1, Landroid/view/WindowInfo;->layer:I

    .line 43
    if-ge v3, v4, :cond_0

    .line 45
    iget-boolean v2, v2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 47
    if-eqz v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 54
    move-result v2

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-object v0

    .line 66
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public final setAccessibilityFocusedWindowLocked(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 16
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 22
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 25
    move-result v5

    .line 26
    if-ne v5, p1, :cond_0

    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 36
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v1, v3

    .line 40
    :cond_2
    return v1
.end method

.method public final shouldUpdateWindowsLocked(Ljava/util/List;Z)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result p2

    .line 11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    if-eq v1, p2, :cond_1

    .line 21
    return v0

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 24
    check-cast v1, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_17

    .line 39
    :cond_2
    move v1, v2

    .line 40
    :goto_0
    if-ge v1, p2, :cond_17

    .line 42
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    .line 44
    check-cast v3, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Landroid/view/WindowInfo;

    .line 52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/view/WindowInfo;

    .line 58
    if-ne v3, v4, :cond_3

    .line 60
    goto/16 :goto_2

    .line 62
    :cond_3
    if-nez v3, :cond_4

    .line 64
    goto/16 :goto_1

    .line 66
    :cond_4
    if-nez v4, :cond_5

    .line 68
    goto/16 :goto_1

    .line 70
    :cond_5
    iget v5, v3, Landroid/view/WindowInfo;->type:I

    .line 72
    iget v6, v4, Landroid/view/WindowInfo;->type:I

    .line 74
    if-eq v5, v6, :cond_6

    .line 76
    goto/16 :goto_1

    .line 78
    :cond_6
    iget-boolean v5, v3, Landroid/view/WindowInfo;->focused:Z

    .line 80
    iget-boolean v6, v4, Landroid/view/WindowInfo;->focused:Z

    .line 82
    if-eq v5, v6, :cond_7

    .line 84
    goto/16 :goto_1

    .line 86
    :cond_7
    iget-object v5, v3, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 88
    if-nez v5, :cond_8

    .line 90
    iget-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 92
    if-eqz v5, :cond_9

    .line 94
    goto/16 :goto_1

    .line 96
    :cond_8
    iget-object v6, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 98
    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v5

    .line 102
    if-nez v5, :cond_9

    .line 104
    goto/16 :goto_1

    .line 106
    :cond_9
    iget-object v5, v3, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 108
    if-nez v5, :cond_a

    .line 110
    iget-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 112
    if-eqz v5, :cond_b

    .line 114
    goto/16 :goto_1

    .line 116
    :cond_a
    iget-object v6, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 118
    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v5

    .line 122
    if-nez v5, :cond_b

    .line 124
    goto/16 :goto_1

    .line 126
    :cond_b
    iget-object v5, v3, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 128
    if-nez v5, :cond_c

    .line 130
    iget-object v5, v4, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 132
    if-eqz v5, :cond_d

    .line 134
    goto :goto_1

    .line 135
    :cond_c
    iget-object v6, v4, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 137
    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_d

    .line 143
    goto :goto_1

    .line 144
    :cond_d
    iget-object v5, v3, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    .line 146
    iget-object v6, v4, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    .line 148
    invoke-virtual {v5, v6}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v5

    .line 152
    if-nez v5, :cond_e

    .line 154
    goto :goto_1

    .line 155
    :cond_e
    iget-object v5, v3, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 157
    if-eqz v5, :cond_f

    .line 159
    iget-object v6, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 161
    if-eqz v6, :cond_f

    .line 163
    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v5

    .line 167
    if-nez v5, :cond_f

    .line 169
    goto :goto_1

    .line 170
    :cond_f
    iget-object v5, v3, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 172
    iget-object v6, v4, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 174
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 177
    move-result v5

    .line 178
    if-nez v5, :cond_10

    .line 180
    goto :goto_1

    .line 181
    :cond_10
    iget-wide v5, v3, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 183
    iget-wide v7, v4, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 185
    cmp-long v5, v5, v7

    .line 187
    if-eqz v5, :cond_11

    .line 189
    goto :goto_1

    .line 190
    :cond_11
    iget-boolean v5, v3, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 192
    iget-boolean v6, v4, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 194
    if-eq v5, v6, :cond_12

    .line 196
    goto :goto_1

    .line 197
    :cond_12
    iget-boolean v5, v3, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 199
    iget-boolean v6, v4, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 201
    if-eq v5, v6, :cond_13

    .line 203
    goto :goto_1

    .line 204
    :cond_13
    iget v5, v3, Landroid/view/WindowInfo;->displayId:I

    .line 206
    iget v6, v4, Landroid/view/WindowInfo;->displayId:I

    .line 208
    if-eq v5, v6, :cond_14

    .line 210
    goto :goto_1

    .line 211
    :cond_14
    iget v5, v3, Landroid/view/WindowInfo;->taskId:I

    .line 213
    iget v6, v4, Landroid/view/WindowInfo;->taskId:I

    .line 215
    if-eq v5, v6, :cond_15

    .line 217
    goto :goto_1

    .line 218
    :cond_15
    iget-object v3, v3, Landroid/view/WindowInfo;->mTransformMatrix:[F

    .line 220
    iget-object v4, v4, Landroid/view/WindowInfo;->mTransformMatrix:[F

    .line 222
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    .line 225
    move-result v3

    .line 226
    if-nez v3, :cond_16

    .line 228
    :goto_1
    return v0

    .line 229
    :cond_16
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 231
    goto/16 :goto_0

    .line 233
    :cond_17
    return v2
.end method

.method public final startTrackingWindowsLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 10
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    .line 13
    move-result v1

    .line 14
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 16
    if-eqz v1, :cond_0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v3, "displayId="

    .line 23
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v3, ";callback="

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string/jumbo v3, "setWindowsForAccessibilityCallback"

    .line 44
    invoke-virtual {v0, v3, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 49
    invoke-virtual {v0, v2, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 52
    :cond_1
    return-void
.end method

.method public final stopTrackingWindowsLocked()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 13
    if-eqz v1, :cond_0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo v3, "displayId="

    .line 20
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, ";callback=null"

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const-string/jumbo v3, "setWindowsForAccessibilityCallback"

    .line 38
    invoke-virtual {v0, v3, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 47
    const/4 v1, 0x0

    .line 48
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 53
    move-result-object v1

    .line 54
    iget v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 56
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 58
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 60
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 62
    invoke-virtual {p0, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 65
    iput v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 67
    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 69
    :cond_1
    return-void
.end method

.method public final updateWindowsLocked(ILjava/util/List;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 7
    if-nez v2, :cond_0

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 16
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 20
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 28
    move-result-object v3

    .line 29
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 31
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 34
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 39
    const/4 v4, 0x0

    .line 40
    move v5, v4

    .line 41
    :goto_0
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 46
    move-result v6

    .line 47
    if-ge v5, v6, :cond_1

    .line 49
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Landroid/view/WindowInfo;

    .line 57
    invoke-virtual {v6}, Landroid/view/WindowInfo;->recycle()V

    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 65
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 68
    iput-boolean v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 70
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 73
    move-result v5

    .line 74
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 76
    iget v7, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    .line 78
    iget v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    .line 80
    if-ne v8, v7, :cond_2

    .line 82
    const/4 v7, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move v7, v4

    .line 85
    :goto_1
    iget v10, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    .line 87
    const/4 v11, -0x1

    .line 88
    if-eq v8, v10, :cond_4

    .line 90
    iget-boolean v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 92
    if-eqz v10, :cond_3

    .line 94
    iget v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 96
    if-eq v10, v11, :cond_3

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v10, v4

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    :goto_2
    const/4 v10, 0x1

    .line 102
    :goto_3
    if-eqz v7, :cond_6

    .line 104
    if-lez v5, :cond_5

    .line 106
    iget-object v12, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    .line 108
    invoke-virtual {v6, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    .line 111
    move-result v12

    .line 112
    iput v12, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 114
    goto :goto_4

    .line 115
    :cond_5
    iput v11, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 117
    :goto_4
    iget-boolean v12, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 119
    if-nez v12, :cond_6

    .line 121
    iput v11, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 123
    :cond_6
    iget-boolean v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 125
    if-eqz v12, :cond_7

    .line 127
    iget v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 129
    goto :goto_5

    .line 130
    :cond_7
    iget v12, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    .line 132
    :goto_5
    if-eqz v10, :cond_8

    .line 134
    if-eq v12, v11, :cond_8

    .line 136
    const/4 v13, 0x1

    .line 137
    goto :goto_6

    .line 138
    :cond_8
    move v13, v4

    .line 139
    :goto_6
    if-lez v5, :cond_1c

    .line 141
    move v15, v4

    .line 142
    const/16 v16, 0x1

    .line 144
    :goto_7
    if-ge v15, v5, :cond_17

    .line 146
    move-object/from16 v4, p2

    .line 148
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v17

    .line 152
    move-object/from16 v11, v17

    .line 154
    check-cast v11, Landroid/view/WindowInfo;

    .line 156
    iget-boolean v14, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 158
    if-eqz v14, :cond_12

    .line 160
    iget-object v14, v11, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 162
    invoke-virtual {v6, v1, v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    .line 165
    move-result v14

    .line 166
    invoke-static {}, Lcom/android/server/accessibility/Flags;->computeWindowChangesOnA11yV2()Z

    .line 169
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 172
    move-result-object v9

    .line 173
    invoke-virtual {v9, v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 176
    iget v4, v11, Landroid/view/WindowInfo;->type:I

    .line 178
    move/from16 v18, v13

    .line 180
    const/4 v13, 0x1

    .line 181
    if-eq v4, v13, :cond_c

    .line 183
    const/4 v13, 0x2

    .line 184
    if-eq v4, v13, :cond_c

    .line 186
    const/4 v13, 0x3

    .line 187
    if-eq v4, v13, :cond_c

    .line 189
    const/4 v13, 0x4

    .line 190
    if-eq v4, v13, :cond_c

    .line 192
    const/16 v13, 0x3ed

    .line 194
    if-eq v4, v13, :cond_c

    .line 196
    const/16 v13, 0x7e1

    .line 198
    if-eq v4, v13, :cond_b

    .line 200
    const/16 v13, 0x7e8

    .line 202
    if-eq v4, v13, :cond_b

    .line 204
    const/16 v13, 0x7f0

    .line 206
    if-eq v4, v13, :cond_a

    .line 208
    const/16 v13, 0x7f2

    .line 210
    if-eq v4, v13, :cond_9

    .line 212
    const/16 v13, 0x7f4

    .line 214
    if-eq v4, v13, :cond_b

    .line 216
    const/16 v13, 0x8b2

    .line 218
    if-eq v4, v13, :cond_b

    .line 220
    const/16 v13, 0x96b

    .line 222
    if-eq v4, v13, :cond_b

    .line 224
    const/16 v13, 0x7e3

    .line 226
    if-eq v4, v13, :cond_b

    .line 228
    const/16 v13, 0x7e4

    .line 230
    if-eq v4, v13, :cond_b

    .line 232
    packed-switch v4, :pswitch_data_0

    .line 235
    packed-switch v4, :pswitch_data_1

    .line 238
    packed-switch v4, :pswitch_data_2

    .line 241
    packed-switch v4, :pswitch_data_3

    .line 244
    const/4 v4, -0x1

    .line 245
    goto :goto_8

    .line 246
    :pswitch_0
    const/4 v4, 0x6

    .line 247
    goto :goto_8

    .line 248
    :pswitch_1
    const/4 v4, 0x2

    .line 249
    goto :goto_8

    .line 250
    :cond_9
    const/4 v4, 0x5

    .line 251
    goto :goto_8

    .line 252
    :cond_a
    const/4 v4, 0x4

    .line 253
    goto :goto_8

    .line 254
    :cond_b
    :pswitch_2
    const/4 v4, 0x3

    .line 255
    goto :goto_8

    .line 256
    :cond_c
    :pswitch_3
    const/4 v4, 0x1

    .line 257
    :goto_8
    invoke-virtual {v9, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 260
    iget v4, v11, Landroid/view/WindowInfo;->type:I

    .line 262
    invoke-virtual {v9, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->semSetRawType(I)V

    .line 265
    iget v4, v11, Landroid/view/WindowInfo;->layer:I

    .line 267
    invoke-virtual {v9, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 270
    iget-boolean v4, v11, Landroid/view/WindowInfo;->focused:Z

    .line 272
    invoke-virtual {v9, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 275
    iget-object v4, v11, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    .line 277
    invoke-virtual {v9, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setRegionInScreen(Landroid/graphics/Region;)V

    .line 280
    iget-object v4, v11, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 282
    invoke-virtual {v9, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    move v4, v12

    .line 286
    iget-wide v12, v11, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 288
    invoke-virtual {v9, v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 291
    iget-boolean v12, v11, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 293
    invoke-virtual {v9, v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 296
    iget v12, v11, Landroid/view/WindowInfo;->displayId:I

    .line 298
    invoke-virtual {v9, v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->setDisplayId(I)V

    .line 301
    iget v12, v11, Landroid/view/WindowInfo;->taskId:I

    .line 303
    invoke-virtual {v9, v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTaskId(I)V

    .line 306
    iget-object v12, v11, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    .line 308
    invoke-virtual {v9, v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLocales(Landroid/os/LocaleList;)V

    .line 311
    iget-object v12, v11, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 313
    invoke-virtual {v6, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    .line 316
    move-result v12

    .line 317
    if-ltz v12, :cond_d

    .line 319
    invoke-virtual {v9, v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 322
    :cond_d
    iget-object v12, v11, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 324
    if-eqz v12, :cond_f

    .line 326
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 329
    move-result v12

    .line 330
    const/4 v13, 0x0

    .line 331
    :goto_9
    if-ge v13, v12, :cond_f

    .line 333
    move/from16 v19, v12

    .line 335
    iget-object v12, v11, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 337
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 340
    move-result-object v12

    .line 341
    check-cast v12, Landroid/os/IBinder;

    .line 343
    invoke-virtual {v6, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    .line 346
    move-result v12

    .line 347
    if-ltz v12, :cond_e

    .line 349
    invoke-virtual {v9, v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    .line 352
    :cond_e
    add-int/lit8 v13, v13, 0x1

    .line 354
    move/from16 v12, v19

    .line 356
    goto :goto_9

    .line 357
    :cond_f
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 360
    move-result-object v12

    .line 361
    check-cast v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 363
    if-nez v12, :cond_10

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 368
    move-result-wide v12

    .line 369
    invoke-virtual {v9, v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    .line 372
    goto :goto_a

    .line 373
    :cond_10
    new-instance v13, Landroid/graphics/Region;

    .line 375
    invoke-direct {v13}, Landroid/graphics/Region;-><init>()V

    .line 378
    invoke-virtual {v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 381
    iget-object v14, v11, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    .line 383
    invoke-virtual {v13, v14}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    .line 386
    move-result v13

    .line 387
    if-eqz v13, :cond_11

    .line 389
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTransitionTimeMillis()J

    .line 392
    move-result-wide v12

    .line 393
    invoke-virtual {v9, v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    .line 396
    goto :goto_a

    .line 397
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 400
    move-result-wide v12

    .line 401
    invoke-virtual {v9, v12, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    .line 404
    goto :goto_a

    .line 405
    :cond_12
    move v4, v12

    .line 406
    move/from16 v18, v13

    .line 408
    const/4 v9, 0x0

    .line 409
    :goto_a
    if-eqz v9, :cond_16

    .line 411
    add-int/lit8 v12, v5, -0x1

    .line 413
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    .line 416
    move-result v13

    .line 417
    sub-int/2addr v12, v13

    .line 418
    invoke-virtual {v9, v12}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 421
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 424
    move-result v12

    .line 425
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    .line 428
    move-result v13

    .line 429
    if-eqz v13, :cond_14

    .line 431
    if-eqz v7, :cond_14

    .line 433
    iget-boolean v13, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 435
    if-nez v13, :cond_13

    .line 437
    iput v12, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 439
    const/4 v13, 0x1

    .line 440
    invoke-virtual {v9, v13}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 443
    goto :goto_b

    .line 444
    :cond_13
    iget v13, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 446
    if-ne v12, v13, :cond_14

    .line 448
    const/16 v16, 0x0

    .line 450
    :cond_14
    :goto_b
    iget-boolean v13, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 452
    if-nez v13, :cond_15

    .line 454
    iget-boolean v13, v11, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 456
    if-eqz v13, :cond_15

    .line 458
    const/4 v13, 0x1

    .line 459
    iput-boolean v13, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 461
    :cond_15
    iget-object v13, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 463
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v13, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 468
    invoke-virtual {v13, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 473
    invoke-static {v11}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    .line 476
    move-result-object v11

    .line 477
    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    :cond_16
    add-int/lit8 v15, v15, 0x1

    .line 482
    move v12, v4

    .line 483
    move/from16 v13, v18

    .line 485
    const/4 v4, 0x0

    .line 486
    const/4 v11, -0x1

    .line 487
    goto/16 :goto_7

    .line 489
    :cond_17
    move v4, v12

    .line 490
    move/from16 v18, v13

    .line 492
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 494
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 497
    move-result v1

    .line 498
    if-eqz v7, :cond_1a

    .line 500
    iget-boolean v5, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    .line 502
    if-eqz v5, :cond_18

    .line 504
    if-eqz v16, :cond_18

    .line 506
    iget v5, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 508
    iput v5, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 510
    :cond_18
    const/4 v5, 0x0

    .line 511
    :goto_c
    if-ge v5, v1, :cond_1a

    .line 513
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 515
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 518
    move-result-object v7

    .line 519
    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 521
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 524
    move-result v9

    .line 525
    iget v11, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    .line 527
    if-ne v9, v11, :cond_19

    .line 529
    const/4 v9, 0x1

    .line 530
    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 533
    :cond_19
    add-int/lit8 v5, v5, 0x1

    .line 535
    goto :goto_c

    .line 536
    :cond_1a
    if-eqz v10, :cond_1d

    .line 538
    const/4 v5, 0x0

    .line 539
    :goto_d
    if-ge v5, v1, :cond_1d

    .line 541
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 543
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 546
    move-result-object v7

    .line 547
    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 549
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 552
    move-result v9

    .line 553
    if-ne v9, v4, :cond_1b

    .line 555
    const/4 v9, 0x1

    .line 556
    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 559
    const/4 v13, 0x0

    .line 560
    goto :goto_e

    .line 561
    :cond_1b
    add-int/lit8 v5, v5, 0x1

    .line 563
    goto :goto_d

    .line 564
    :cond_1c
    move v4, v12

    .line 565
    move/from16 v18, v13

    .line 567
    :cond_1d
    move/from16 v13, v18

    .line 569
    :goto_e
    new-instance v1, Ljava/util/ArrayList;

    .line 571
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 577
    move-result v5

    .line 578
    const/4 v7, 0x0

    .line 579
    :goto_f
    if-ge v7, v5, :cond_1f

    .line 581
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 584
    move-result-object v9

    .line 585
    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 587
    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 589
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 592
    move-result v11

    .line 593
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 596
    move-result-object v10

    .line 597
    if-nez v10, :cond_1e

    .line 599
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 602
    move-result v9

    .line 603
    const/4 v10, 0x2

    .line 604
    invoke-static {v8, v9, v10}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    .line 607
    move-result-object v9

    .line 608
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    goto :goto_10

    .line 612
    :cond_1e
    const/4 v10, 0x2

    .line 613
    :goto_10
    add-int/lit8 v7, v7, 0x1

    .line 615
    goto :goto_f

    .line 616
    :cond_1f
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 618
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 621
    move-result v5

    .line 622
    const/4 v7, 0x0

    .line 623
    :goto_11
    if-ge v7, v5, :cond_22

    .line 625
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 627
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 630
    move-result-object v9

    .line 631
    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 633
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 636
    move-result v10

    .line 637
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 640
    move-result-object v10

    .line 641
    check-cast v10, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 643
    if-nez v10, :cond_20

    .line 645
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 648
    move-result v9

    .line 649
    const/4 v10, 0x1

    .line 650
    invoke-static {v8, v9, v10}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    .line 653
    move-result-object v9

    .line 654
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    goto :goto_12

    .line 658
    :cond_20
    invoke-virtual {v9, v10}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    .line 661
    move-result v10

    .line 662
    if-eqz v10, :cond_21

    .line 664
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    .line 667
    move-result v9

    .line 668
    invoke-static {v8, v9, v10}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    .line 671
    move-result-object v9

    .line 672
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_21
    :goto_12
    add-int/lit8 v7, v7, 0x1

    .line 677
    goto :goto_11

    .line 678
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 681
    move-result v0

    .line 682
    const/4 v3, 0x0

    .line 683
    :goto_13
    if-ge v3, v0, :cond_23

    .line 685
    iget-object v5, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    .line 687
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 690
    move-result-object v7

    .line 691
    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    .line 693
    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 695
    invoke-virtual {v5, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 698
    add-int/lit8 v3, v3, 0x1

    .line 700
    goto :goto_13

    .line 701
    :cond_23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 704
    move-result v0

    .line 705
    const/4 v1, 0x1

    .line 706
    sub-int/2addr v0, v1

    .line 707
    :goto_14
    if-ltz v0, :cond_24

    .line 709
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 712
    move-result-object v1

    .line 713
    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 715
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 718
    add-int/lit8 v0, v0, -0x1

    .line 720
    goto :goto_14

    .line 721
    :cond_24
    if-eqz v13, :cond_25

    .line 723
    invoke-virtual {v6, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    .line 726
    :cond_25
    return-void

    .line 727
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 739
    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 751
    :pswitch_data_2
    .packed-switch 0x7d5
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 771
    :pswitch_data_3
    .packed-switch 0x7f6
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
