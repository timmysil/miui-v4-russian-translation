.class public final Lcom/android/common/contacts/DataUsageStatUpdater$DataUsageFeedback;
.super Ljava/lang/Object;
.source "DataUsageStatUpdater.java"


# static fields
.field private static final FEEDBACK_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "usagefeedback"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/common/contacts/DataUsageStatUpdater$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
