import React from "react";
import styles from "./Footer.module.css";

export const Footer: React.FC = () => {
    return (
        <footer className={styles.footer}>
            <div className={styles.footerContent}>
                <p className={styles.footerText}>This is a demo with publicly available information</p>
            </div>
        </footer>
    );
};
