.class public abstract Lcom/android/server/am/mars/database/MARsTableContract;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

.field public static final MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

.field public static final MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

.field public static final MARS_POLICY_DEFINITION:Landroid/net/Uri;

.field public static final MARS_SETTINGS_URI:Landroid/net/Uri;

.field public static final SCPM_AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "content://com.samsung.android.sm.mars/MARs_Policy"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    .line 10
    const-string/jumbo v0, "content://com.samsung.android.sm.mars/MARs_AutoRunParameter"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    const-string/jumbo v0, "content://com.samsung.android.sm.mars/MARs_ExcludeTarget"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    .line 25
    const-string/jumbo v0, "content://com.samsung.android.sm.mars/MARs_IsCurrentImportant"

    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    .line 34
    const-string/jumbo v0, "content://com.samsung.android.sm.mars/MARs_AdjustRestriction"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    .line 43
    const-string/jumbo v0, "content://com.samsung.android.sm.mars/MARs_Settings"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    .line 52
    const-string/jumbo v0, "content://com.samsung.android.sm.dcapi"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->SCPM_AUTHORITY_URI:Landroid/net/Uri;

    .line 61
    return-void
.end method
