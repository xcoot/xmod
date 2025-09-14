.class public final Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ARG_GETHOMEMODE_HOMEMODE:Ljava/lang/String; = "home_mode"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FEATURE_SHORTCUT_FOR_EASYMODE:I = 0x3e9

.field public static final HOME_MODE_APPS:I = 0x3

.field public static final HOME_MODE_EASY:I = 0x1

.field public static final HOME_MODE_HOME_ONLY:I = 0x2

.field public static final KEY_CELLDIMENSION_COLS_INT:Ljava/lang/String; = "cols"

.field public static final KEY_CELLDIMENSION_ROWS_INT:Ljava/lang/String; = "rows"

.field public static final KEY_COMPONENT_COMPONENTNAME:Ljava/lang/String; = "component"

.field public static final KEY_COORDINATION_POSITION_POINT:Ljava/lang/String; = "coordination_position"

.field public static final KEY_COORDINATION_SIZE_POINT:Ljava/lang/String; = "coordination_size"

.field public static final KEY_FEATURE_INT:Ljava/lang/String; = "feature"

.field public static final KEY_HOMEMODE_STRING:Ljava/lang/String; = "home_mode"

.field public static final KEY_INDEX_INT:Ljava/lang/String; = "index"

.field public static final KEY_INVOCATION_RESULT_INT:Ljava/lang/String; = "invocation_result"

.field public static final KEY_ITEMCOUNT_INT:Ljava/lang/String; = "itemcount"

.field public static final KEY_PAGE_INT:Ljava/lang/String; = "page"

.field public static final KEY_STATE_BOOLEAN:Ljava/lang/String; = "state"

.field public static final KEY_SUPPLEMENT_SERVICE_PAGE_VISIBILITY_BOOLEAN:Ljava/lang/String; = "visibility"

.field public static final METHOD_ADD_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field public static final METHOD_ADD_WIDGET:Ljava/lang/String; = "add_widget"

.field public static final METHOD_DISABLE_APPS_BUTTON:Ljava/lang/String; = "disable_apps_button"

.field public static final METHOD_ENABLE_APPS_BUTTON:Ljava/lang/String; = "enable_apps_button"

.field public static final METHOD_GET_APPS_BUTTON_STATE:Ljava/lang/String; = "get_apps_button_state"

.field public static final METHOD_GET_APPS_CELL_DIMENSION:Ljava/lang/String; = "get_apps_cell_dimension"

.field public static final METHOD_GET_HOME_CELL_DIMENSION:Ljava/lang/String; = "get_home_cell_dimension"

.field public static final METHOD_GET_HOME_MODE:Ljava/lang/String; = "get_home_mode"

.field public static final METHOD_GET_HOTSEAT_ITEM:Ljava/lang/String; = "get_hotseat_item"

.field public static final METHOD_GET_HOTSEAT_ITEM_COUNT:Ljava/lang/String; = "get_hotseat_item_count"

.field public static final METHOD_GET_HOTSEAT_MAXITEM_COUNT:Ljava/lang/String; = "get_hotseat_maxitem_count"

.field public static final METHOD_GET_SUPPLEMENT_SERVICE_PAGE_VISIBILITY:Ljava/lang/String; = "get_supplement_service_page_visibility"

.field public static final METHOD_IS_SUPPORTED:Ljava/lang/String; = "is_supported"

.field public static final METHOD_MAKE_EMPTY_POSITION:Ljava/lang/String; = "make_empty_position"

.field public static final METHOD_REMOVE_HOTSEAT_ITEM:Ljava/lang/String; = "remove_hotseat_item"

.field public static final METHOD_REMOVE_PAGE_FROM_HOME:Ljava/lang/String; = "remove_page_from_home"

.field public static final METHOD_REMOVE_SHORTCUT:Ljava/lang/String; = "remove_shortcut"

.field public static final METHOD_REMOVE_WIDGET:Ljava/lang/String; = "remove_widget"

.field public static final METHOD_SET_HOTSEAT_ITEM:Ljava/lang/String; = "add_hotseat_item"

.field public static final METHOD_SET_SUPPLEMENT_SERVICE_PAGE_VISIBILITY:Ljava/lang/String; = "set_supplement_service_page_visibility"

.field public static final METHOD_SWITCH_HOME_MODE:Ljava/lang/String; = "switch_home_mode"

.field public static final RESULT_ACCESS_DENIED:I = -0x64

.field public static final RESULT_FAILURE:I = -0x2

.field public static final RESULT_NOT_FOUND:I = -0x3

.field public static final RESULT_NOT_SUPPORTED:I = -0x1

.field public static final RESULT_PARAM_ERROR:I = -0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_SUPPORTED:I = 0x0

.field public static final SUPPLEMENT_SERVICE_PAGE_INVISIBLE:I = 0x5

.field public static final SUPPLEMENT_SERVICE_PAGE_VISIBLE:I = 0x4

.field public static final VALUE_GETHOMEMODE_EASYMODE:Ljava/lang/String; = "easy_mode"

.field public static final VALUE_GETHOMEMODE_HOMEANDAPPSMODE:Ljava/lang/String; = "home_apps_mode"

.field public static final VALUE_GETHOMEMODE_HOMEONLYMODE:Ljava/lang/String; = "home_only_mode"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.sec.android.app.launcher.settings/settings"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addShortcut(ILandroid/graphics/Point;Landroid/content/ComponentName;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "page"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string p1, "coordination_position"

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "component"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    .line 30
    const-string p2, "add_shortcut"

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "invocation_result"

    .line 38
    .line 39
    const/4 p2, -0x2

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final addWidget(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/content/ComponentName;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "page"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string p1, "coordination_position"

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "coordination_size"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "component"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 34
    .line 35
    const-string p2, "add_widget"

    .line 36
    .line 37
    const/4 p3, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "invocation_result"

    .line 43
    .line 44
    const/4 p2, -0x2

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getAppsButtonVisibility()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v1, "get_apps_button_state"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "invocation_result"

    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string/jumbo v0, "state"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_0
    return v1
.end method

.method public final getAppsCellDimension()Landroid/util/Size;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v1, "get_apps_cell_dimension"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string/jumbo v0, "rows"

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v2, "cols"

    .line 25
    .line 26
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    new-instance v1, Landroid/util/Size;

    .line 31
    .line 32
    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public final getHomeCellDimension()Landroid/util/Size;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v1, "get_home_cell_dimension"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string/jumbo v0, "rows"

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v2, "cols"

    .line 25
    .line 26
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    new-instance v1, Landroid/util/Size;

    .line 31
    .line 32
    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public final getHomeMode()I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "get_home_mode"

    .line 11
    .line 12
    const-string v3, "home_mode"

    .line 13
    .line 14
    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "easy_mode"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_0
    const-string v0, "home_apps_mode"

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x3

    .line 41
    return p0

    .line 42
    :cond_1
    const-string v0, "home_only_mode"

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    const/4 p0, 0x2

    .line 51
    return p0

    .line 52
    :cond_2
    const/4 p0, -0x2

    .line 53
    return p0
.end method

.method public final getHotseatItem(I)Landroid/content/ComponentName;
    .locals 3

    .line 1
    const-string v0, "index"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    .line 15
    const-string v1, "get_hotseat_item"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "invocation_result"

    .line 23
    .line 24
    const/4 v0, -0x2

    .line 25
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-string v0, "component"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    instance-of p1, p0, Landroid/content/ComponentName;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    check-cast p0, Landroid/content/ComponentName;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_0
    return-object v2
.end method

.method public final getHotseatItemCount()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v1, "get_hotseat_item_count"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "itemcount"

    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final getHotseatMaxItemCount()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v1, "get_hotseat_maxitem_count"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "itemcount"

    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final getSupplementServicePageVisibility()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    const-string v1, "get_supplement_service_page_visibility"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "invocation_result"

    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string/jumbo v0, "visibility"

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_0
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final isSupported(I)I
    .locals 3

    .line 1
    const-string v0, "feature"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    .line 15
    const-string v1, "is_supported"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "invocation_result"

    .line 23
    .line 24
    const/4 v0, -0x2

    .line 25
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final makeEmptyPosition(ILandroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "page"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const-string p1, "coordination_position"

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "coordination_size"

    .line 18
    .line 19
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    .line 30
    const-string/jumbo p2, "make_empty_position"

    .line 31
    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string p1, "invocation_result"

    .line 39
    .line 40
    const/4 p2, -0x2

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public final removeHotseatItem(I)I
    .locals 3

    .line 1
    const-string v0, "index"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 14
    .line 15
    const-string/jumbo v1, "remove_hotseat_item"

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "invocation_result"

    .line 24
    .line 25
    const/4 v0, -0x2

    .line 26
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final removePageFromHome(I)I
    .locals 3

    .line 1
    const-string/jumbo v0, "page"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 15
    .line 16
    const-string/jumbo v1, "remove_page_from_home"

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "invocation_result"

    .line 25
    .line 26
    const/4 v0, -0x2

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final removeShortcut(Landroid/content/ComponentName;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "component"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    .line 19
    const-string/jumbo v1, "remove_shortcut"

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "invocation_result"

    .line 28
    .line 29
    const/4 v0, -0x2

    .line 30
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final removeWidget(Landroid/content/ComponentName;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "component"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    .line 19
    const-string/jumbo v1, "remove_widget"

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "invocation_result"

    .line 28
    .line 29
    const/4 v0, -0x2

    .line 30
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final setAppsButtonVisibility(Z)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 16
    .line 17
    const-string v1, "enable_apps_button"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    .line 32
    const-string v1, "disable_apps_button"

    .line 33
    .line 34
    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    const-string p1, "invocation_result"

    .line 39
    .line 40
    const/4 v0, -0x2

    .line 41
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public final setHotseatItem(ILandroid/content/ComponentName;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "index"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string p1, "component"

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    .line 24
    const-string p2, "add_hotseat_item"

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "invocation_result"

    .line 32
    .line 33
    const/4 p2, -0x2

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final setSupplementServicePageVisibility(Z)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "visibility"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 19
    .line 20
    const-string/jumbo v1, "set_supplement_service_page_visibility"

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "invocation_result"

    .line 29
    .line 30
    const/4 v0, -0x2

    .line 31
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method public final switchHomeMode(I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const-string v2, "home_mode"

    .line 8
    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    const-string p1, "home_apps_mode"

    .line 12
    .line 13
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x2

    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    const-string p1, "home_only_mode"

    .line 21
    .line 22
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sget-object p1, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    .line 33
    const-string/jumbo v1, "switch_home_mode"

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "invocation_result"

    .line 42
    .line 43
    const/4 v0, -0x2

    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0

    .line 49
    :cond_1
    const/4 p0, -0x1

    .line 50
    return p0
.end method
