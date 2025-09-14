.class public final Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALPHABETIC_GRID:Ljava/lang/String; = "alphabetical_order"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CUSTOM_GRID:Ljava/lang/String; = "custom_order"

.field public static final KEY_COMPONENT_COMPONENTNAME:Ljava/lang/String; = "component"

.field public static final KEY_COORDINATION_POSITION_POINT:Ljava/lang/String; = "coordination_position"

.field public static final KEY_HOME_URL:Ljava/lang/String; = "shortcut_uri"

.field public static final KEY_ICON_RESOURCE:Ljava/lang/String; = "shortcut_resource"

.field public static final KEY_INVOCATION_RESULT_INT:Ljava/lang/String; = "invocation_result"

.field public static final KEY_OPTION_ORDER:Ljava/lang/String; = "option_order"

.field public static final KEY_SHORTCUT_TITLE:Ljava/lang/String; = "shortcut_title"

.field public static final METHOD_ADD_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field public static final METHOD_ADD_URL_SHORTCUT:Ljava/lang/String; = "add_uri_shortcut"

.field public static final METHOD_CHANGE_ORDER:Ljava/lang/String; = "change_order"

.field public static final METHOD_GET_ORDER:Ljava/lang/String; = "get_order"

.field public static final METHOD_MAKE_EMPTY_POSITION:Ljava/lang/String; = "make_empty_position"

.field public static final METHOD_REMOVE_SHORTCUT:Ljava/lang/String; = "remove_shortcut"

.field public static final METHOD_REMOVE_URL_SHORTCUT:Ljava/lang/String; = "remove_uri_shortcut"

.field public static final RESULT_ACCESS_DENIED:I = -0x64

.field public static final RESULT_ALREADY_EMPTY:I = -0x6

.field public static final RESULT_FAILURE:I = -0x2

.field public static final RESULT_NOT_FOUND:I = -0x3

.field public static final RESULT_NOT_SUPPORTED:I = -0x1

.field public static final RESULT_PAGE_FULL:I = -0x5

.field public static final RESULT_PARAM_ERROR:I = -0x4

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_SUPPORTED:I = 0x0

.field public static final TYPE_GRID:Ljava/lang/String; = "type_order"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.sec.android.app.desktoplauncher.settings"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

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
    iput-object p1, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addShortcut(Landroid/graphics/Point;Landroid/content/ComponentName;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "coordination_position"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

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
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    .line 24
    const-string p2, "add_shortcut"

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

.method public final addURLShortcut(Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "coordination_position"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo p1, "shortcut_title"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo p1, "shortcut_uri"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo p1, "shortcut_resource"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p1, "component"

    .line 30
    .line 31
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 41
    .line 42
    const-string p2, "add_uri_shortcut"

    .line 43
    .line 44
    const/4 p3, 0x0

    .line 45
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "invocation_result"

    .line 50
    .line 51
    const/4 p2, -0x2

    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public final changeOrder(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string/jumbo v0, "option_order"

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object v0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 15
    .line 16
    const-string v1, "change_order"

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

.method public final getOrder()I
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 13
    .line 14
    const-string v2, "get_order"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "invocation_result"

    .line 22
    .line 23
    const/4 v1, -0x2

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final makeEmptyPosition(Landroid/graphics/Point;)I
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "coordination_position"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    .line 19
    const-string/jumbo v1, "make_empty_position"

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
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

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

.method public final removeURLShortcut(Ljava/lang/String;Landroid/content/ComponentName;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "shortcut_uri"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "component"

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sget-object p1, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;->CONTENT_URI:Landroid/net/Uri;

    .line 24
    .line 25
    const-string/jumbo p2, "remove_uri_shortcut"

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "invocation_result"

    .line 34
    .line 35
    const/4 p2, -0x2

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method
